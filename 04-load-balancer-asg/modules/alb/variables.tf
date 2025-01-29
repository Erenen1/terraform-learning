variable "lb_name" {
  description = "Load Balancer ismi"
  type        = string
}

variable "security_group_id" {
  description = "Load Balancer için Security Group ID"
  type        = string
}

variable "subnet_ids" {
  description = "Load Balancer için Subnet ID'leri"
  type        = list(string)
}

variable "target_group_name" {
  description = "Target Group ismi"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
