// resouces prefix
variable "prefix" {
  type        = "string"
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "vpc_id" {
  type        = "string"
  description = "VPC id in which igw needs to be created"
}

variable "destination_cidr_block" {
  type        = "string"
  description = "Destination cidr for outgoing traffic"
}

variable "gateway_id" {
  type        = "string"
  description = "Gateway through which traffic passess"
}

variable "subnet_id" {
  type        = "string"
  description = "Subnet id to associate with route table"
}

variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}