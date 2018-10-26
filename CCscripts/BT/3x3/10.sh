#!/bin/bash
#SBATCH --time=00:10:00
#SBATCH --account=def-kharma
#SBATCH --job-name=EMP-BT-3-10
#SBATCH --output=/project/6000253/tjawhar/EMP-ES/ESResults/BT/3x3/%10.csv

module load python/3.7

python CCscripts/BT/BT.py '/project/6000253/tjawhar/EMP-ES/ESData/S/3x3/10/' 3 

