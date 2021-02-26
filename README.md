Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/cloudstones/linux-terraform.git

$cd linux-terraform/src/

$python generate_token.py

$source export_keys.sh

$vi terraform/src/clusters/dev.json

{
"myregion" : "",

"myamiid" : "",
  
"mykeypair" : ""
}

$cd providers/aws

$terraform init .

$terraform validate -var-file=../../clusters/dev.json .

$terraform apply -var-file=../../clusters/dev.json .
