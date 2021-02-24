Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/cloudstones/terraform.git

$cd terraform/src/cloud/providers/aws

$python generate_token.py

$source export_keys.sh

$vi terraform/src/cloud/cluster_templates/dev_aws.json

{
"myregion" : "",

"myamiid" : "",
  
"mykeypair" : ""
}


$terraform init .

$terraform validate -var-file=../cluster_templates/dev_aws.json .

$terraform apply -var-file=../cluster_templates/dev_aws.json .
