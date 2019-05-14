#!/bin/bash

#SBATCH --job-name=CaloriNet_leave_1_out
#SBATCH --partition=gpu_veryshort
#SBATCH --gres=gpu:1
#SBATCH --time=1:00:00
#SBATCH --mail-type=FAIL
#SBATCH --mem=64G

module add Python/2.7.12-foss-2016b
module add libs/tensorflow/1.2
pip install --user keras
pip install --user h5py

cd ~/CaloriNet
echo $PWD
python CaloriNet_leave_1_out.py
