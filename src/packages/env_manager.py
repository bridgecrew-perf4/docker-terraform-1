import os
import sys
import shutil
import cluster_manager
sys.path.insert(0,'packages')

def create_env(clustername):
    CSP_BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    envDir = CSP_BASE+"/environments/"+clustername
    shutil.copytree(CSP_BASE+"/providers/"+"/aws/",envDir)
def cleanup_env(clustername):
    status = cluster_manager.delete_cluster(clustername)
