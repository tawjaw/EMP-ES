#!/bin/bash
#SBATCH --time=00:01:00
#SBATCH --account=def-kharma
#SBATCH --job-name=testEMP
#SBATCH --output=testout/%j.out

module load python/3.7.1

#python CCscripts/BT/BT.py '/project/6000253/tjawhar/EMP-ES/ESData/S/3x3/2/' 'S-2-3-3-0-NR.csv' 3 'EMP-ES/ESResults/BT/3x3/2/'
./scripts/BT/3x3/2/9.sh
