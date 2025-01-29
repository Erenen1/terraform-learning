variable "vpc_cidr" {
  description = "VPC CIDR bloğu"
  type        = string
}

variable "subnet_cidr_one" {
  description = "Subnet CIDR bloğu"
  type        = string
}
variable "subnet_cidr_two" {
  description = "Subnet CIDR bloğu"
  type        = string
}

variable "vpc_name" {
  description = "VPC ismi"
  type        = string
}

variable "subnet_name" {
  description = "Subnet ismi"
  type        = string
}

variable "availability_zones" {
  description = "value"
  type = list(string)
}