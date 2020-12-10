# Terraform
### Build VPC with multiple regions
### with bucket setup script: setenv.sh 

```
### use commands:
always run
source setenv.sh script to set remote backend on s3


To Build 
source setenv.sh configurations/dev/regions/oregon.tfvars 
terraform apply -var-file configurations/dev/regions/oregon.tfvars 


To Destroy 
source setenv.sh configurations/dev/regions/oregon.tfvars 
terraform destroy -var-file configurations/dev/regions/oregon.tfvars 


below command will help to cleanup .terraform files:

sudo find / -type d -name .terraform  -exec rm -rf {} \;


```




```
environment = "dev"
s3_bucket = "use-your-backet-name" #Will be used to set backend.tf
s3_folder_project = "class" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "ohio" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf


region = "us-east-2"
vpc_cidr = "172.16.0.0/16"
public_cidr1 = "172.16.1.0/24"
public_cidr2 = "172.16.2.0/24"
public_cidr3 = "172.16.3.0/24"
private_cidr1 = "172.16.101.0/24"
private_cidr2 = "172.16.102.0/24"
private_cidr3 = "172.16.103.0/24"
tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Created_by              =   "Farrukh"
    Department              =   "IT"
    Bill                    =   "CFO"
}

```