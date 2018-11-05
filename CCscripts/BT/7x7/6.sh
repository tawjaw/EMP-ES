#!/bin/bash
#SBATCH --array=1-1000
#SBATCH --job-name=BT-7x7-6
#SBATCH --output=/project/6000253/tjawhar/EMP-ES/ESResults/BT/7x7/6/%a.csv
#SBATCH --time=04:00:00
#SBATCH --account=def-kharma

module load python/3.7

LINE=$(head -n $SLURM_ARRAY_TASK_ID /project/6000253/tjawhar/EMP-ES/ESData/S/7x7/6/all_files.txt | tail -1 | tr -d '\r' )
python CCscripts/BT/BT_onepuzzle.py "/project/6000253/tjawhar/EMP-ES/ESData/S/7x7/6/$LINE" 7
