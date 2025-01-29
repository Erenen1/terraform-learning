variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance türü"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_name" {
  description = "Security Group ismi"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "SSH için izin verilen IP"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance ismi"
  type        = string
}
