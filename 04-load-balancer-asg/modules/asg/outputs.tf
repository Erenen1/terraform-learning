output "asg_name" {
  description = "Auto Scaling Group ismi"
  value       = aws_autoscaling_group.this.name
}
