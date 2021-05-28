import os
import sys
import shutil
import cluster_manager
import terraform
sys.path.insert(0,'packages')

def create_env(clustername):
    CSP_BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    envDir = CSP_BASE+"/environments/"+clustername
    shutil.copytree(CSP_BASE+"/providers/"+"/aws/",envDir)
def apply_env(clustername):
    status = terraform.terraform_apply(clustername)
def destroy_env(clustername):
    print("terraform_destroy")
    status = terraform.terraform_destroy(clustername)
def cleanup_env(clustername):
    status = cluster_manager.delete_cluster(clustername)
