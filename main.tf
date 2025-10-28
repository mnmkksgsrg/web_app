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
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_ec2_ids = module.security_group.ec2_security_group_ids
}

module "alb" {
  source = "./modules/alb"

  alb_name = var.alb_name
  vpc_name = var.vpc_name
  vpc_id   = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  instance_name = var.instance_name
  instance_id = module.ec2.instance_id
  security_group_alb_ids = module.security_group.alb_security_group_ids
}

module "security_group" {
  source = "./modules/security_group"

  vpc_name = var.vpc_name
  vpc_id   = module.vpc.vpc_id
}

