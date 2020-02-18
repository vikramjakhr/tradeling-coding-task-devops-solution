// resouces prefix
variable "prefix" {
  description = "Prefix for each resource created. e.g. qa, uat, prod"
}

variable "cidr_block" {
  description = "VPC CIDR range"
}

variable "enable_dns_support" {
  default     = "true"
  description = "If this attribute is false, the Amazon-provided DNS server that resolves public DNS hostnames to IP addresses is not enabled."
}

variable "enable_dns_hostnames" {
  default     = "false"
  description = "If this attribute is true, instances in the VPC get public DNS hostnames"
}

variable "tags" {
  type        = "map"
  description = "List of tags needs to be applied to the resource"
}