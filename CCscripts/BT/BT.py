import os
import sys
import time
module_path = os.path.abspath('')
if module_path not in sys.path:
    sys.path.append(module_path)

direc = sys.argv[1]
size  = sys.argv[2]


from EMP.Algorithms.BT import BT
from EMP.EMP import loadPieces

with open(direc+'all_files.txt') as f:
    lines = [line.rstrip('\n') for line in f]
for line in lines:
    pieces = loadPieces(direc+line)
    alg = BT(pieces, (int(size),int(size)), EMPType='S', rotate=False)
    start = time.time()
    alg.search()
    end = time.time()
    print(line.rstrip('.csv') + ',' + str(end-start) +','\
            + str(alg.compCost) +','+ str(alg.grid))


