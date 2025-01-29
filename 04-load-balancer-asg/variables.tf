variable "vpc_cidr" {
  description = "value"
  type = string
}
variable "lb_name" {
  description = "value"
  type = string
}

variable "subnet_cidr_one" {
  description = "value"
  type = string
}
variable "subnet_cidr_two" {
  description = "value"
  type = string
}

variable "subnet_ids" {
  description = "value"
  type = list(string)
}

variable "ami_id" {
  description = "value"
  type = string

}
variable "instance_type" {
  description = "value"
  type = string

}
variable "min_size" {
  description = "value"
  type = number
}
variable "max_size" {
  description = "value"
  type = number
}
variable "desired_capacity" {
  description = "value"
  type = number
}
variable "allowed_ssh_ip_block" {
  description = "value"
  type = string
}
variable "availability_zones" {
  description = "value"
  type = list(string)
}