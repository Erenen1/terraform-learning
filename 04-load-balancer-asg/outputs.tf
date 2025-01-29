output "vpc_id" {
  description = "Oluşturulan VPC'nin ID'si"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}
output "lb_arn" {
  description = "Oluşturulan Load Balancer'ın ARN'si"
  value       = module.alb.lb_arn
}

output "target_group_arn" {
  description = "Load Balancer için Target Group ARN'si"
  value       = module.alb.target_group_arn
}

output "asg_name" {
  description = "Oluşturulan Auto Scaling Group'un adı"
  value       = module.asg.asg_name
}

output "security_group_id" {
  description = "Oluşturulan Security Group'un ID'si"
  value       = module.sg.security_group_id
}
