
resource "aws_launch_template" "this" {
  name = var.launch_template_name
  image_id = var.ami_id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = true
    security_groups = [var.security_group_id]
  }
}

resource "aws_autoscaling_group" "this" {
  launch_template {
    id = aws_launch_template.this.id
    version = "$Latest"
  }
  min_size = var.min_size
  max_size = var.max_size
  desired_capacity = var.desired_capacity
  vpc_zone_identifier = [var.subnet_id]

  target_group_arns = [var.target_group_arn]
}

