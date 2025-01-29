variable "aws_region" {
  description = "AWS kaynaklarının oluşturulacağı bölge"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "EC2 için kullanılacak AMI ID."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance tipi"
  type        = string
  default     = "t2.micro"
}

variable "allowed_ssh_ip" {
  description = "SSH erişimine izin verilecek IP adresi."
  type        = string
}
