Project Title
=====================
Terraform is used to provision and manage IT Infrastructure

Pre-Requisites
============================



Execution Flow
=====================

$git clone https://github.com/krishnamaram2/terraform.git

$cd infrastructure-manager/src

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
