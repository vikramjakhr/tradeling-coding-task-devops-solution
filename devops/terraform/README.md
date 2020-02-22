Tradling Terraform
=========

- Reference: https://www.terraform.io/

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

List of modules:
-------------------------------

* [VPC](./modules/aws_vpc)
* [Subnet](./modules/aws_subnet)
* [NAT Gateway](./modules/aws_nat_gateway)
* [IGW](./modules/aws_igw)
* [Route Table](./modules/aws_route_table_association)

## How to run
```
    terraform workspace new qa
    terraform workspace select qa
    terraform init
    terraform plan -var-file=qa.tfvars
    terraform apply -var-file=qa.tfvars
``` 