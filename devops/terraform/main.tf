# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "${var.default_region}"

}

# Terraform backend
terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

# Local environment variables
locals {
  Environment = "${terraform.workspace}" // workspace would be like dev, qa, uat...
  Project     = "tradling"
  Prefix      = "${format("%s-%s", local.Environment, local.Project)}"
  default_tags = {
    Environment = "${local.Environment}",
    Project     = "${local.Project}"
  }
}

# VPC
module "vpc" {
  source = "./modules/aws_vpc"

  prefix               = "${local.Prefix}"
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = "${local.default_tags}"
}

# Public subnet 1
module "subnet_public_az_1" {
  source = "./modules/aws_subnet"

  prefix            = "${local.Prefix}"
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${var.subnet_public_az_1_cidr}"
  availability_zone = "${var.az_1}"

  tags = "${local.default_tags}"
}

# Public subnet 2
module "subnet_public_az_2" {
  source = "./modules/aws_subnet"

  prefix            = "${local.Prefix}"
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${var.subnet_public_az_2_cidr}"
  availability_zone = "${var.az_2}"

  tags = "${local.default_tags}"
}

# Private subnet 1
module "subnet_private_az_1" {
  source = "./modules/aws_subnet"

  prefix            = "${local.Prefix}"
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${var.subnet_private_az_1_cidr}"
  availability_zone = "${var.az_1}"

  tags = "${local.default_tags}"
}

# Private subnet 2
module "subnet_private_az_2" {
  source = "./modules/aws_subnet"

  prefix            = "${local.Prefix}"
  vpc_id            = "${module.vpc.id}"
  cidr_block        = "${var.subnet_private_az_2_cidr}"
  availability_zone = "${var.az_1}"

  tags = "${local.default_tags}"
}

# IGW
module "igw" {
  source = "./modules/aws_igw"

  prefix = "${local.Prefix}"
  vpc_id = "${module.vpc.id}"
  tags   = "${local.default_tags}"
}

# NAT Gateway
module "nat" {
  source = "./modules/aws_nat_gateway"

  prefix    = "${local.Prefix}"
  subnet_id = "${module.subnet_public_az_1.id}"
  tags      = "${local.default_tags}"

}