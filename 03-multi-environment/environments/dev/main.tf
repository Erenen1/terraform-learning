module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  vpc_name = "dev-vpc"
  subnet_name = "dev-subnet"
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  vpc_id               = module.vpc.vpc_id
  subnet_id            = module.vpc.subnet_id
  security_group_name  = "dev-security-group"
  allowed_ssh_ip       = var.allowed_ssh_ip
  instance_name        = "dev-ec2-instance"
}

