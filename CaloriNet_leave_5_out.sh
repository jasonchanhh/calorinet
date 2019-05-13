#!/bin/bash

#SBATCH --job-name=CaloriNet_leave_5_out
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --mem=64G
#SBATCH --mail-type=FAIL

module add Python/2.7.12-foss-2016b
module add libs/tensorflow/1.2
pip install --user keras
pip install --user h5py

cd calories
python CaloriNet_leave_5_out.py
