// resouces prefix
variable "prefix" {
  type = "string"
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "subnet_id" {
  type = "string"
  description = "public subnet id in which nat gateway gets launched"
}

variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}