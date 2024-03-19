
EXP_NAME="resnet18_throughput"
CORES=32
THREADS=32
MEMORY=120
BATCH=3

cd ./../../
OUT_DIR="./benchmarking/outputs/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/"
DATA_DIR="./benchmarking/data/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/"

mkdir -p $OUT_DIR
mkdir -p $DATA_DIR


# Start timing
start=$(date +%s%N)

pids=()
for ((i=1; i<=BATCH; i++))
do
    ./bin/benchmark "$THREADS" "$CORES" "$MEMORY" "$EXP_NAME" "$i" > "${OUT_DIR}/run_batchid${i}.txt" &
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