terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.11.0"
}

provider "aws" {
  region = "us-west-2"
}
module "vpc" {
  source = "./modules/vpc"

  name            = var.vpc_name
  cidr_block      = var.vpc_cidr_block
  azs             = var.availability_zones
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "security_groups" {
  source          = "./modules/security_groups"
  name            = var.sg_name_prefix
  vpc_id          = module.vpc.vpc_id
  web_subnet_cidrs = module.vpc.public_subnets
}

module "web_servers" {
  source         = "./modules/web_servers"
  name           = var.web_name_prefix
  instance_count = var.web_instance_count
  ami_id         = var.web_ami_id
  instance_type  = var.web_instance_type
  subnets        = module.vpc.public_subnets
  security_group = module.security_groups.web_sg_id
  user_data         = [
    file("${path.module}/user_data/user_data_1.sh"),
    file("${path.module}/user_data/user_data_2.sh"),
  ]
}

module "database" {
  source          = "./modules/database"
  name            = var.db_name_prefix
  instance_class  = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  db_name         = var.db_name
  db_username     = var.db_username
  db_password     = var.db_password
  subnets         = module.vpc.private_subnets
  security_group  = module.security_groups.db_sg_id
}
