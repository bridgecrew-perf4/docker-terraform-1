Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/cloudstones/terraform.git

$cd terraform/src/webapp

$source export.sh

$vi config.json

{

"myregion" : "us-east-1",

"myaccesskey" : "",

"mysecretkey" : "",

"myamiid" : ""

}


$terraform init .

$terraform validate -var-file=config.json .

$terraform apply -var-file=config.json .
