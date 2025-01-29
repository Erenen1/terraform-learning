module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr_one = var.subnet_cidr_one
  subnet_cidr_two = var.subnet_cidr_two
  vpc_name = "dev-vpc"
  subnet_name = "dev-subnet"
  availability_zones = var.availability_zones
}

module "sg" {
  source = "./modules/security_group"
  security_group_name = "my-sg"
  vpc_id = module.vpc.vpc_id
  allowed_ssh_ip_block = var.allowed_ssh_ip_block
}

module "alb" {
  source = "./modules/alb"
  lb_name           = var.lb_name
  security_group_id = module.sg.security_group_id
  subnet_ids       = module.vpc.subnet_ids
  target_group_name = "MyTargetGroup"
  vpc_id            = module.vpc.vpc_id
}

module "asg" {
  source               = "./modules/asg"
  launch_template_name = "MyLaunchTemplate"
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  subnet_id           = module.vpc.subnet_ids[0]
  target_group_arn     = module.alb.target_group_arn
  security_group_id = module.sg.security_group_id
  asg_name             = "MyASG"
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
}
