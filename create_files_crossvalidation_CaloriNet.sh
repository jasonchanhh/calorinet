#!/bin/bash

#SBATCH --job-name=calorinet_createfiles
#SBATCH --partition=cpu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=0:0:10
#SBATCH --mem=200M

module add Python/2.7.12-foss-2016b
pip install --user numpy

cd ~/CaloriNet
python create_files_crossvalidation_CaloriNet.py
