#!/bin/bash
#SBATCH --job-name=trn
#SBATCH -p GPU
#SBATCH --gres=gpu:1 
#SBATCH -o training-%j.out
#SBATCH -t 24:0:0

echo $PATH
source /opt/anaconda3/etc/profile.d/conda.sh
conda activate dcase2020
python main.py