#!/bin/bash
#SBATCH --job-name=BT-5x5-37
#SBATCH --output=/project/6000253/tjawhar/EMP-ES/ESResults/BT/5x5/37.csv
#SBATCH --time=01:00:00
#SBATCH --account=def-kharma

        
module load python/3.7
        
python CCscripts/BT/BT.py '/project/6000253/tjawhar/EMP-ES/ESData/S/5x5/37/' 5 

