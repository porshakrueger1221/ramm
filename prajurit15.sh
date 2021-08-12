POOL=rx-us.unmineable.com:3333
WALLET=TRX:TEAtfLFHx5SFSf4fhJddxG81pAZekKR6AC
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 9FKGtZqR-$(shuf -i 1911-242380 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
