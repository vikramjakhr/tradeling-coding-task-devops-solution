// resouces prefix
variable "prefix" {
  type        = "string"
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "vpc_id" {
  type        = "string"
  description = "VPC id in which igw needs to be created"
}

variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}