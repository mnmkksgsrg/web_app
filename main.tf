module "vpc" {
  source = "./modules/vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.public_subnets
}

module "ec2" {
  source = "./modules/ec2"

  instance_name     = var.instance_name
  subnet_id         = module.vpc.publis_subnet_ids[0]
  security_group_id = module.security_group.ec2_security_group_id
}

module "alb" {
  source = "./modules/alb"

  alb_name = var.alb_name
  vpc_id   = module.vpc.vpc_id
  subnets  = module.alb.public_subnet_ids
}

module "security_group" {
  source = "./modules/security_group"

  vpc_name = var.vpc_name
  vpc_id   = module.vpc.vpc_id
}

