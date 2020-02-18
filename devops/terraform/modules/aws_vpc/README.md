AWS VPC Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/aws/r/vpc.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:
 
- **VPC**: Creates a new VPC with specified CIDR.

Usage
-------------------------------

Use below snippet in tf file to create a VPC in AWS.

```
module "vpc" {
  source = "./modules/aws_vpc"

  prefix               = "<prefix-here>"
  cidr_block           = "<cidr-here>"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = "<default_tags>"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | VPC CIDR range | `string` | n/a | yes |
| enable\_dns\_hostnames | If this attribute is true, instances in the VPC get public DNS hostnames | `string` | `"false"` | no |
| enable\_dns\_support | If this attribute is false, the Amazon-provided DNS server that resolves public DNS hostnames to IP addresses is not enabled. | `string` | `"true"` | no |
| prefix | Prefix for each resource created. e.g. qa, uat, prod | `string` | n/a | yes |
| tags | List of tags needs to be applied to the resource | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | VPC ARN |
| cidr\_block | VPC CIDR |
| id | VPC ID |