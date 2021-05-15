import os

CWD = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

print(CWD)
def create_env(clustername):
    envDir = CWD+"/environments/"+clustername
    os.mkdir(envDir)
#print(os.path.exists(envDir))
