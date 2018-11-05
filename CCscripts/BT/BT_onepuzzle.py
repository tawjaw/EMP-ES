import os
import sys
import time
module_path = os.path.abspath('')
if module_path not in sys.path:
        sys.path.append(module_path)

        file  = sys.argv[1]
        size  = sys.argv[2]
    

from EMP.Algorithms.BT import BT
from EMP.EMP import loadPieces


pieces = loadPieces(file)
alg = BT(pieces, (int(size),int(size)), EMPType='S', rotate=False)
start = time.time()
alg.search()
end = time.time()

head, tail = os.path.split(file)
print(tail.rstrip('.csv') + ',' + str(end-start) +','\
    + str(alg.compCost) +','+ str(alg.grid))


