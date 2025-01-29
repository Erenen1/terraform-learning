output "lb_arn" {
  description = "Load Balancer ARN"
  value       = aws_alb.this.arn
}

output "target_group_arn" {
  description = "Target Group ARN"
  value       = aws_lb_target_group.this.arn
}
