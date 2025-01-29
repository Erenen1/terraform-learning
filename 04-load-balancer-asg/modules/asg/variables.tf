variable "launch_template_name" {
  description = "Launch Template ismi"
  type        = string
}

variable "ami_id" {
  description = "EC2 için AMI ID"
  type        = string
}
variable "security_group_id" {
  description = "value"
  type = string
}
variable "instance_type" {
  description = "EC2 için instance türü"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID'leri"
  type        = string
}

variable "target_group_arn" {
  description = "Target Group ARN"
  type        = string
}

variable "min_size" {
  description = "Auto Scaling Group için minimum instance sayisi"
  type        = number
}

variable "max_size" {
  description = "Auto Scaling Group için maksimum instance sayisi"
  type        = number
}

variable "desired_capacity" {
  description = "Auto Scaling Group için hedef instance sayisi"
  type        = number
}
variable "asg_name" {
  description = "name of ASG"
  type = string
}