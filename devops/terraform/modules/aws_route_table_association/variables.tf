// resouces prefix
variable "prefix" {
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "vpc_id" {
  description = "VPC id in which igw needs to be created"
}

variable "destination_cidr_block" {
  description = "Destination cidr for outgoing traffic"
}

variable "gateway_id" {
  description = "Gateway through which traffic passess"
}

variable "subnet_id" {
  description = "Subnet id to associate with route table"
}

variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}