provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  
}

module "frontend" {
  source          = "./modules/frontend"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
}

module "app" {
  source          = "./modules/app"
  vpc_id          = module.vpc.vpc_id
  app_subnets     = module.vpc.app_subnets
  app_ami_id      = var.app_ami_id
  app_instance_type = var.app_instance_type
}

module "database" {
  source          = "./modules/database"
  vpc_id          = module.vpc.vpc_id
  db_subnets      = module.vpc.db_subnets
  db_instance_class = var.db_instance_class
  db_username     = var.db_username
  db_secret_arn   = var.db_secret_arn
}
