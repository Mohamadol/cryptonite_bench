/*
 *  Benchmark homomorphic convolution
 *
 *  Created on: August 10, 2019
 *      Author: ryanleh */
#include <cstddef>
#include <iostream>
#include <iomanip>
#include <string>
#include <chrono>
#include <random>
#include <thread>
#include <mutex>
#include <memory>
#include <limits>
#include <omp.h>
#include <fstream>
#include <filesystem>
#include <math.h>
#include "conv2d.h"
#include "run_conv.cpp"

using namespace std;

/* Generates a random image and filters with the given dimensions and times
 * convolution operation */
void benchmark(int image_h, int image_w, int filter_h, int filter_w,
               int inp_chans, int out_chans, int stride, bool padding_valid)
{
    // Create uniform distribution
    // We only sample up to 20 bits because the plaintext evaluation
    // doesn't support 128 bit numbers so we need to make sure
    // multiplication doesn't overfloow 64 bits
    random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<u64> dis(0, 1 << 20);

    // Create Eigen inputs for the plaintext and raw arrays for HE
    EImage eimage(inp_chans);
    Image image = new Channel[inp_chans];
    for (int chan = 0; chan < inp_chans; chan++)
    {
        EChannel tmp_chan(image_h, image_w);
        image[chan] = new u64[image_h * image_w];
        for (int idx = 0; idx < image_h * image_w; idx++)
        {
            u64 val = dis(gen);
            tmp_chan(idx / image_w, idx % image_w) = val;
            image[chan][idx] = val;
        }
        eimage[chan] = tmp_chan;
    }

    EFilters efilters(out_chans);
    Filters filters = new Image[out_chans];
    for (int out_c = 0; out_c < out_chans; out_c++)
    {
        EImage tmp_img(inp_chans);
        filters[out_c] = new Channel[inp_chans];
        for (int inp_c = 0; inp_c < inp_chans; inp_c++)
        {
            EChannel tmp_chan(filter_h, filter_w);
            filters[out_c][inp_c] = new u64[filter_h * filter_w];
            for (int idx = 0; idx < filter_h * filter_w; idx++)
            {
                u64 val = dis(gen);
                tmp_chan(idx / filter_w, idx % filter_w) = val;
                filters[out_c][inp_c][idx] = val;
            }
            tmp_img[inp_c] = tmp_chan;
        }
        efilters[out_c] = tmp_img;
    }

    cout << "\n\n--------------------------------------------\n";
    cout << "Image shape: (" << image_h << "x" << image_w << ", " << inp_chans
         << ") - Filters shape: (" << filter_h << "x" << filter_w << ", " << out_chans
         << ") - Padding = " << (padding_valid ? "VALID" : "SAME") << ", Stride = (" << stride << "x" << stride << ")\n";
    cout << "--------------------------------------------\n\n";

    bool pass = run_conv(image, filters, image_h, image_w, filter_h, filter_w, inp_chans, out_chans, padding_valid, stride, stride, 0);

    if (pass)
        cout << "PASS" << endl;
    else
        cout << "FAIL" << endl;
}

int main(int argc, char **argv)
{
    //--------------------------------- timing variables ---------------------------------
    double encryption_duration = 0.0, decryption_duration = 0.0, HE_conv_duration = 0.0, mask_gen_duration = 0.0;

    SerialCT key_share;
    ClientFHE cfhe = client_keygen(&key_share);
    ServerFHE sfhe = server_keygen(key_share);

    // ResNet-50 Benchmarks
    // int img_size[48] = {56, 58, 56, 56, 58, 56, 56, 58, 56, 56, 30, 28, 28, 30, 28, 28, 30, 28, 28, 30, 28, 28, 16, 14, 14, 16, 14, 14, 16, 14, 14, 16, 14, 14, 16, 14, 14, 16, 14, 14, 9, 7, 7, 9, 7, 7, 9, 7};
    // int kernel_size[48] = {1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1, 1, 3, 1};
    // int pads[48] = {0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0};
    // int out_c[48] = {64, 64, 256, 64, 64, 256, 64, 64, 256, 128, 128, 512, 128, 128, 512, 128, 128, 512, 128, 128, 512, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 512, 512, 2048, 512, 512, 2048, 512, 512, 2048};
    // int in_c[48] = {64, 64, 64, 256, 64, 64, 256, 64, 64, 256, 128, 128, 512, 128, 128, 512, 128, 128, 512, 128, 128, 512, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 256, 256, 1024, 512, 512, 2048, 512, 512, 2048, 512, 512};
    // int stride[48] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1};
    // int num_layers = 48;
    // std::vector<float> sparsity = {// plain
    //                                0.58667, 0.829671, 0.770508, 0.766541, 0.80032, 0.788025, 0.733337, 0.740668, 0.769897, 0.692719, 0.864868, 0.838898, 0.939163, 0.93733, 0.919327, 0.870544, 0.899007, 0.850204, 0.853394, 0.868998, 0.869995, 0.758675, 0.943985, 0.863136, 0.971264, 0.973019, 0.937885, 0.956989, 0.968289, 0.924576, 0.942245, 0.964164, 0.932644, 0.938625, 0.973362, 0.948524, 0.925861, 0.969879, 0.940792, 0.810873, 0.993685, 0.934195, 0.979527, 0.986358, 0.968226, 0.92181, 0.995313, 0.944851};
    // std::vector<float> sparsity = {// encrypted
    //                                0.332031, 0.688368, 0.576172, 0.585938, 0.638943, 0.607178, 0.535034, 0.549154, 0.577759, 0.477661, 0.317925, 0.224365, 0.594116, 0.58431, 0.467651, 0.318359, 0.421387, 0.265259, 0.279053, 0.314182, 0.308228, 0.108276, 0.175673, 0.00927734, 0.382446, 0.410699, 0.105347, 0.239258, 0.348416, 0.0698242, 0.153076, 0.308322, 0.0880127, 0.125854, 0.420302, 0.136475, 0.0789795, 0.367079, 0.123779, 0.0012207, 0.949134, 0.57251, 0.842796, 0.894046, 0.759995, 0.518562, 0.961192, 0.628334};
    // std::vector<float> sparsity(48, 0.0); // dense

    // ResNet-18 Benchmarks
    int img_size[17] = {30, 30, 30, 30, 30, 30, 16, 16, 16, 16, 9, 9, 9, 9, 6, 6, 6};
    int kernel_size[17] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
    int pads[17] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    int out_c[17] = {64, 64, 64, 64, 64, 128, 128, 128, 128, 256, 256, 256, 256, 512, 512, 512, 512};
    int in_c[17] = {3, 64, 64, 64, 64, 64, 128, 128, 128, 128, 256, 256, 256, 256, 512, 512, 512};
    int stride[17] = {1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1};
    int num_layers = 17;
    std::vector<float> sparsity(17, 0.9);

    int number_of_threads = atoi(argv[1]);
    int vcores = atoi(argv[2]);
    int memory = atoi(argv[3]);
    string EXP_NAME = argv[4];
    int total_batches = atoi(argv[5]);
    int batch_id = atoi(argv[6]);

    cout << "Number of Layers : " << num_layers << endl;
    cout << "Number of args: " << argc << endl;
    cout << "Number of Threads: " << number_of_threads << endl;
    cout << "total batches: " << total_batches << endl;
    cout << "batch id: " << batch_id << endl;
    cout << "Exp name: " << EXP_NAME << endl;

    printf("Encrypting...\n");
    double start_time_enc = omp_get_wtime();
    ClientShares *ptr_client_shares;
    ptr_client_shares = (ClientShares *)malloc(num_layers * sizeof(ClientShares));

    ServerShares *ptr_server_shares;
    ptr_server_shares = (ServerShares *)malloc(num_layers * sizeof(ServerShares));

    for (int i = 0; i < num_layers; i++)
    {
        ptr_client_shares[i] = client_encrypt(cfhe, img_size[i], img_size[i], kernel_size[i],
                                              kernel_size[i], in_c[i], out_c[i], pads[i], stride[i], stride[i]);
    }
    double end_time_enc = omp_get_wtime();
    encryption_duration += end_time_enc - start_time_enc;
    printf("All Encryptions: %f\n", end_time_enc - start_time_enc);

    //--------------------------------- mask gen ---------------------------------
    double start_time_mask_gen = omp_get_wtime();
    for (int i = 0; i < num_layers; i++)
    {
        ptr_server_shares[i] = server_preprocess(cfhe, sfhe, img_size[i], img_size[i], kernel_size[i],
                                                 kernel_size[i], in_c[i], out_c[i], pads[i], stride[i], stride[i]);
    }
    double end_time_mask_gen = omp_get_wtime();
    mask_gen_duration += end_time_mask_gen - start_time_mask_gen;

    printf("Performing convolutions\n");
    double start_time_conv = omp_get_wtime();
#pragma omp parallel for num_threads(number_of_threads) schedule(static)
    for (int i = 0; i < num_layers; i++)
    {
        he_conv(cfhe, sfhe, ptr_client_shares[i], ptr_server_shares[i],
                img_size[i], img_size[i], kernel_size[i],
                kernel_size[i], in_c[i], out_c[i], pads[i], stride[i], stride[i], 1.0 - sparsity[i]);
    }

    double end_time_conv = omp_get_wtime();
    HE_conv_duration += end_time_conv - start_time_conv;
    printf("All Convs: %f\n", end_time_conv - start_time_conv);

    printf("Decrypting...\n");
    double start_time_dec = omp_get_wtime();
    for (int i = 0; i < num_layers; i++)
    {
        client_decrypt(cfhe, sfhe, ptr_client_shares[i], ptr_server_shares[i],
                       img_size[i], img_size[i], kernel_size[i],
                       kernel_size[i], in_c[i], out_c[i], pads[i], stride[i], stride[i]);
    }
    free(ptr_server_shares);
    free(ptr_client_shares);
    double end_time_dec = omp_get_wtime();
    decryption_duration += end_time_dec - start_time_dec;
    printf("All Decryptions: %f\n", end_time_dec - start_time_dec);

    double total_duration = encryption_duration + mask_gen_duration + HE_conv_duration + decryption_duration;

    //--------------------------------- saving the file ---------------------------------
    string system_config = "_" + to_string(vcores) + "_" + to_string(vcores) + "_" + to_string(memory) + "_" + to_string(memory);
    string batch_size = "_1__batch_size";
    string batches = "_" + to_string(total_batches) + "__batches";
    std::filesystem::path dirPath = "./benchmarking/data/" + EXP_NAME + "/" + system_config + "/" + batch_size + "/" + batches;
    std::filesystem::path filePath = dirPath / ("all_layers_batchid" + to_string(batch_id) + ".csv");
    if (!std::filesystem::exists(dirPath))
        std::filesystem::create_directories(dirPath);

    std::ofstream file(filePath);
    if (file.is_open())
    {
        file << "encryption"
             << ","
             << "random_gen"
             << ","
             << "HE_eval"
             << ","
             << "decryption"
             << ","
             << "total_duration" << std::endl;
        file << encryption_duration << "," << mask_gen_duration << "," << HE_conv_duration << "," << decryption_duration << "," << total_duration << std::endl;
        file.close();
        std::cout << "Data written to " << filePath << std::endl;
    }
    else
    {
        std::cerr << "Unable to open file" << std::endl;
    }

    return 0;
}
