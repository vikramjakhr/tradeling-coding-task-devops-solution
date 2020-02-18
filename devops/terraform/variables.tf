// Region
variable "default_region" {
  description = "default region"
}


// VPC
variable "vpc_cidr_block" {
  description = "VPC cidr"
}

// Subnet
variable "az_1" {
  description = "Availability zone 1"
}

variable "az_2" {
  description = "Availability zone 2"
}


variable "subnet_public_az_1_cidr" {
  description = "public subnet 1"
}

variable "subnet_public_az_2_cidr" {
  description = "public subnet 2"
}

variable "subnet_private_az_1_cidr" {
  description = "private subnet 1"
}

variable "subnet_private_az_2_cidr" {
  description = "private subnet 1"
}
