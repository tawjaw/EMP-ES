import os
import sys
import time
module_path = os.path.abspath('')
if module_path not in sys.path:
    sys.path.append(module_path)
#puzzleInput ='/home/tawfiq/Workspace/Github/EMP-ES/ESData/S/3x3/2/'
#puzzleFile= 'S-2-3-3-0-NR.csv' 
#puzzleSize = 3 
#puzzleOutput ='/home/tawfiq/Workspace/Github/EMP-ES/ESResults/BT/3x3/2/'
puzzleInput = sys.argv[1]
puzzleFile = sys.argv[2]
puzzleSize = sys.argv[3]
puzzleOutput = sys.argv[4]

from EMP.Algorithms.BT import BT
from EMP.EMP import loadPieces, generatePuzzle, savePieces


pieces = loadPieces(puzzleInput+puzzleFile)
alg = BT(pieces, (int(puzzleSize), int(puzzleSize)), EMPType='S', rotate=False)

start = time.time()

alg.search()

end = time.time()

file = open(puzzleOutput + "result_"+ puzzleFile,'w')
file.write(str(end-start)+'\n')
file.write(str(alg.grid))

file.close()


