
EXP_NAME="resnet18_throughput_swap"
CORES=8
THREADS=8
MEMORY=30
TOTAL_BATCHES=3

cd ./../../
OUT_DIR="./benchmarking/outputs/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/_1__batch_size/_{$TOTAL_BATCHES}__batches"
DATA_DIR="./benchmarking/data/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/_1__batch_size/_{$TOTAL_BATCHES}__batches"

mkdir -p $OUT_DIR
mkdir -p $DATA_DIR


# Start timing
start=$(date +%s%N)

pids=()
for ((i=1; i<=BATCH; i++))
do
    ./bin/benchmark "$THREADS" "$CORES" "$MEMORY" "$EXP_NAME" "$TOTAL_BATCHES" "$i" > "${OUT_DIR}/run_batchid${i}.txt" &
    pids+=($!)
done

# Wait for all processes to finish
for pid in "${pids[@]}"; do
    wait "$pid"
done

# End timing
end=$(date +%s%N)

# Calculate duration in milliseconds
duration=$(( (end - start) / 1000000 ))
echo "Total duration: $duration ms" > "${OUT_DIR}/time_elapsed.txt"