#!/usr/bin/env python3
import sys
import argparse

#import terraform
#import env_manager

sys.path.append('packages')
import env_manager
#CSP_BASE = os.path.dirname(os.path.abspath(__file__))
VALID_ACTIONS = ["create", "apply", "stop", "destroy", "cleanup"]

parser = argparse.ArgumentParser(description='Cloudstones platform manager')
parser.add_argument('action', help="Action %s"%VALID_ACTIONS)
parser.add_argument('-c','--clustername', help='unique name of the cluster')
parser.add_argument('-t', help='name of the cluster template')

args = parser.parse_args()

action = args.action
clustername = args.clustername
template = args.t

#def main_fun():
if action == 'create':
    print("attempting to create %s" % (clustername))
    status = env_manager.create_env(clustername)

#if __name__ == "__main__":    
#main_fun()
