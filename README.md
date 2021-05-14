Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/cloudstones/mesos-terraform.git

$python generate_token.py

$source export_keys.sh

$cd mesos-terraform/src/

$vi clusters/aws/dev.json

{
"myregion" : "",

"myamiid" : "",
  
"mykeypair" : ""
}

$cd providers/aws

$terraform init .

$terraform validate -var-file=../../clusters/aws/dev.json .

$terraform apply -var-file=../../clusters/aws/dev.json .


sudo docker container run -e AWS_ACCESS_KEY_ID= -e AWS_SECRET_ACCESS_KEY=   aws1 init -var-file=../../clusters/aws/dev.json -auto-approve .
