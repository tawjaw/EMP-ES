<<<<<<< Updated upstream
mkdir -p CCscripts/BT/4x4
cd CCscripts/BT/4x4

for i in {1..24} 
do
	echo "#!/bin/bash
#SBATCH --time=00:10:00
#SBATCH --account=def-kharma
#SBATCH --job-name=EMP-BT-4-"$i"
#SBATCH --output=/project/6000253/tjawhar/EMP-ES/ESResults/BT/4x4/"$i".csv
	
module load python/3.7
	
python CCscripts/BT/BT.py '/project/6000253/tjawhar/EMP-ES/ESData/S/4x4/"$i"/' 4 " >> "$i".sh
done
=======

mkdir -p scripts/BT/3x3/2
i=1
for FILE in ESData/S/3x3/2/*.csv; do
	echo "python CCscripts/BT/BT.py '/project/6000253/tjawhar/EMP-ES/ESData/S/3x3/2/' '"$FILE "' 3 'EMP-ES/ESResults/BT/3x3/2/'" > scripts/BT/3x3/2/$i.sh
	i=$(($i+1))
done
	
>>>>>>> Stashed changes

