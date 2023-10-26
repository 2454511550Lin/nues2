#!/bin/bash

#SBATCH --job-name=NueS2     
#SBATCH --mem-per-gpu=8G
#SBATCH --cpus-per-gpu=4
#SBATCH --gpus=1
#SBATCH --time=01:00:00

hostname
nvidia-smi

data_path="/mnt/kostas-graid/sw/envs/heguang/NeuS2/datasets/dtu_scan24"
your_experiment_name="dtu"
config_name="/mnt/kostas-graid/sw/envs/heguang/NeuS2/datasets/dtu_scan24/config.json"
training_steps=10000

python scripts/run.py --scene ${data_path}/transform.json --name ${your_experiment_name} --network ${config_name} --n_steps ${training_steps}


#./build/testbed --scene /mnt/kostas-graid/sw/envs/heguang/NeuS2/datasets/dtu_scan24/transform.json