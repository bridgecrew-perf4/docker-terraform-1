import os
import sys
sys.path.insert(0,'packages')
CWD = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

#print(CWD)
def create_env(clustername):
    #CWD = os.path.dirname(os.path.abspath(__file__))
    print("inside def",clustername)
    print("inside def",CWD)
    envDir = CWD+"/environments/"+clustername
    os.mkdir(envDir)
