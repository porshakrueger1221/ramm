POOL=rx-us.unmineable.com:3333
WALLET=TRX:TL3TCWQXJiozBM3hZVhg2BiPh4NsbgzHpm
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo TjxXR5hA-$(shuf -i 1811-845969 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
