terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/VPC"

  vpc_cidr              = var.vpc_cidr
  subnet_privadas_cidrs = var.subnet_privadas_cidrs
  subnet_publicas_cidrs = var.subnet_publicas_cidrs
  azs                   = var.azs
}

module "infra" {
  source = "./modules/INFRA"

  vpc_id      = module.vpc.vpc_id
  subnet_ids  = concat(module.vpc.public_subnets, module.vpc.private_subnets)
  allowed_ips = var.allowed_ips
}

module "rds" {
  source = "./modules/RDS"

  subnet_group_name = module.infra.db_subnet_group_name
  security_group_id = module.infra.security_group_id
}
