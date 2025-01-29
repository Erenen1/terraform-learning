module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  vpc_name = "modular-vpc"
  subnet_name = "modular-subnet"
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  vpc_id = module.vpc.vpc_id # burası vpc icerisinde outputlardan geldi.
  subnet_id = module.vpc.subnet_id # burası da outputtan geldi.
  security_group_name = "modular-sg"
  allowed_ssh_ip = "0.0.0.0/0"
  instance_name = "modular-ec2-instance"
}