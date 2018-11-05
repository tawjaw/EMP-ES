mkdir -p CCscripts/BT/5x5
cd CCscripts/BT/5x5

for i in {3..40} 
do
	echo "#!/bin/bash
#SBATCH --array=1-1000
#SBATCH --job-name=BT-5x5-"$i"
#SBATCH --output=/project/6000253/tjawhar/EMP-ES/ESResults/BT/5x5/"$i"/%a.csv
#SBATCH --time=01:00:00
#SBATCH --account=def-kharma

module load python/3.7
"
'LINE=$(head -n $SLURM_ARRAY_TASK_ID /project/6000253/tjawhar/EMP-ES/ESData/S/5x5/'$i'/all_files.txt | tail -1 | tr -d "\r" )'
'python CCscripts/BT/BT_onepuzzle.py "/project/6000253/tjawhar/EMP-ES/ESData/S/5x5/'$i'/$LINE" 5' >> "$i".sh
done

