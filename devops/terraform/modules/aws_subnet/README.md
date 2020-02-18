AWS Subnet Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/aws/r/subnet.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:
 
- **Subnet**: Creates a new subnet in specified VPC along with specified CIDR and AZ

Usage
-------------------------------

Use below snippet in tf file to create a NAT in AWS.

```
module "subnet" {
  source = "./modules/aws_subnet"

  prefix            = "<prefix-here>"
  vpc_id            = "<vpc-id-here>"
  cidr_block        = "<cidr-block-here>"
  availability_zone = "<az-here>"

  tags = "<default_tags>"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| availability\_zone | The AZ for the subnet | `string` | n/a | yes |
| cidr\_block | Subnet CIDR range | `string` | n/a | yes |
| map\_public\_ip\_on\_launch | true to indicate that instances launched into the subnet should be assigned a public IP address | `string` | `"false"` | no |
| prefix | Prefix for each resource created. e.g. qa, uat, prod | `string` | n/a | yes |
| tags | List of tags needs to be applied to the resource | `map` | n/a | yes |
| vpc\_id | VPC id in which subnet needs to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | Subnet ARN |
| id | Subnet ID |