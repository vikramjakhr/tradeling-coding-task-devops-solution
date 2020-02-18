// resouces prefix
variable "prefix" {
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "vpc_id" {
  description = "VPC id in which subnet needs to be created"
}

variable "cidr_block" {
  description = "Subnet CIDR range"
}

variable "availability_zone" {
  description = "The AZ for the subnet"
}


variable "map_public_ip_on_launch" {
  default     = "false"
  description = "true to indicate that instances launched into the subnet should be assigned a public IP address"
}


variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}