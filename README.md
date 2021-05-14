Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/cloudstones/mesos-terraform.git

$cd mesos-terraform

$python resources/generate_token.py

$source resources/export_keys.sh

$vi src/clusters/aws/dev.json

{

"myamiid" : "",
  
"mykeypair" : ""

}

$terraform init src/providers/aws

$terraform validate -var-file=src/clusters/aws/dev.json src/providers/aws

$terraform apply -var-file=src/clusters/aws/dev.json src/providers/aws



or

$cd mesos-terraform/src

$sh csp.sh


sudo docker container run -e AWS_ACCESS_KEY_ID= -e AWS_SECRET_ACCESS_KEY= AWS_DEFAULT_REGION=  aws1 init -var-file=src/clusters/aws/dev.json -auto-approve .
