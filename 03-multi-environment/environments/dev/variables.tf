variable "vpc_cidr" {
  description = "VPC CIDR bloğu"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR bloğu"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance türü"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "SSH için izin verilen IP"
  type        = string
}
