AWS IGW Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/aws/r/internet_gateway.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:

- **Internet Gateway**: Creates a new internet gateway in specified VPC.
  
Usage
-------------------------------

Use below snippet in tf file to create a internet gateway in AWS.

```
module "igw" {
  source = "./modules/aws_igw"

  prefix = "<prefix-here>" # qa, uat
  vpc_id = "<vpc-id-here>"
  tags   = "<default_tags>"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| prefix | Prefix for each resource created. e.g. qa, uat, prod | `string` | n/a | yes |
| tags | List of tags needs to be applied to the resource | `map` | n/a | yes |
| vpc\_id | VPC id in which igw needs to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Internet gateway ID |
