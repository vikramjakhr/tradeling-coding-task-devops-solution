AWS NAT Gateway Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/aws/r/nat_gateway.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:
 
- **NAT Gateway**: Creates NAT Gateway with EIP attached for allowing internet access to public subnets.
  
Usage
-------------------------------

Use below snippet in tf file to create a NAT in AWS.

```
module "nat" {
  source = "./modules/aws_nat_gateway"

  prefix    = "<prefix-here>"
  subnet_id = "<subnet-id-here>"
  tags      = "<default_tags>"

}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| prefix | Prefix for each resource created. e.g. qa, uat, prod | `string` | n/a | yes |
| subnet\_id | public subnet id in which nat gateway gets launched | `string` | n/a | yes |
| tags | List of tags needs to be applied to the resource | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | Subnet ARN |
| id | Subnet ID |