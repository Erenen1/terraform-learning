resource "aws_alb" "this" {
  name = var.lb_name
  internal = false
  load_balancer_type = "application"
  security_groups = [var.security_group_id]
  subnets = var.subnet_ids

  tags = {
    "Name" = var.lb_name
  }
}

resource "aws_lb_target_group" "this" {
  name = var.target_group_name
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
    tags = {
    Name = var.target_group_name
  }
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_alb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}