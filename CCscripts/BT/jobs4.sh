for i in {1..24}
do
	sbatch CCscripts/BT/4x4/$i.sh
	#echo CCscripts/BT/4x4/$i.sh
	sleep 2
done
