
EXP_NAME="resnet18"
CORES=8

cd ./../../
OUT_DIR="./benchmarking/outputs"
DATA_DIR="./benchmarking/data/resnet18"

mkdir -p $OUT_DIR
mkdir -p $DATA_DIR

./benchmarking/scripts/memory_monitor.sh "${DATA_DIR}/memory_usage.csv" &
pid="$!"

for i in {1..8}
do
    ./bin/benchmark $CORES $i > "${OUT_DIR}/${EXP_NAME}.txt"
done

kill $pid

wait