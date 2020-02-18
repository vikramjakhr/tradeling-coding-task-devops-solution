AWS Route table association Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/aws/r/route_table_association.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:
 
- **Route table**: Creates route table in the specified VPC.

- **Route**: Creates route for the specified route table with destination.

- **Route table association**: Creates route table association for the specified route table and the subnet.
  
Usage
-------------------------------

Use below snippet in tf file to create a route table association in AWS.

```
module "rtb_association" {
  source = "./modules/aws_route_table_association"

  prefix                 = "<prefix-here>"
  vpc_id                 = "<vpc-id-here>"
  subnet_id              = "<subnet-id-here>"
  gateway_id             = "<gateway-id-here>"
  destination_cidr_block = "<destination-cidr-block-here>"
  tags                   = "<default_tags>"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| destination\_cidr\_block | Destination cidr for outgoing traffic | `string` | n/a | yes |
| gateway\_id | Gateway through which traffic passess | `string` | n/a | yes |
| prefix | Prefix for each resource created. e.g. qa, uat, prod | `string` | n/a | yes |
| subnet\_id | Subnet id to associate with route table | `string` | n/a | yes |
| tags | List of tags needs to be applied to the resource | `map` | n/a | yes |
| vpc\_id | VPC id in which igw needs to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Internet gateway ID |