SUB_EXP_NAME=""
EXP_NAME="resnet18_latency${SUB_EXP_NAME}"
CORES=8
THREADS=8
MEMORY=30
TOTAL_BATCHES=1

cd ./../../
OUT_DIR="./benchmarking/outputs/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/_1__batch_size/_${TOTAL_BATCHES}__batches/_${THREADS}_threads"
DATA_DIR="./benchmarking/data/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/_1__batch_size/_${TOTAL_BATCHES}__batches/_${THREADS}_threads"

mkdir -p $OUT_DIR
mkdir -p $DATA_DIR

/mnt/mohammad/cryptonite_bench/benchmarking/scripts/memory_monitor.sh "${DATA_DIR}/memory.csv" &
MEM_pid="$!"


start=$(date +%s%N)
declare -a pids
cleanup() {
    echo "Cleaning up..."
    for pid in "${pids[@]}"; do
        kill "$pid" 2>/dev/null
    done
    kill "$MEM_pid" 2>/dev/null
}
trap cleanup SIGINT SIGTERM

for ((i=1; i<=TOTAL_BATCHES; i++))
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
echo "Total duration: $duration ms" > "${OUT_DIR}/_${THREADS}_time_elapsed.txt"

kill $MEM_pid
wait