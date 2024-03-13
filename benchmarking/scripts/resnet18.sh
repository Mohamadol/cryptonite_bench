
EXP_NAME="resnet18"
CORES=32
THREADS=16
MEMORY=120

cd ./../../
OUT_DIR="./benchmarking/outputs/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/"
DATA_DIR="./benchmarking/data/${EXP_NAME}/_${CORES}_${CORES}_${MEMORY}_${MEMORY}/"

mkdir -p $OUT_DIR
mkdir -p $DATA_DIR

./benchmarking/scripts/memory_monitor.sh "${DATA_DIR}/memory_usage.csv" &
pid="$!"

# for i in {1..8}
# do
# done

./bin/benchmark $THREADS $CORES $MEMORY > "${OUT_DIR}/run.txt"

kill $pid

wait