resource "aws_lb" "alb" {
  name = "${var.instance_name}_alb"
  internal = false
  load_balancer_type = "application"
  security_groups = var.security_group_alb_ids
  subnets = var.public_subnet_ids
  enable_deletion_protection = true

  tags = {
    Name = "${var.vpc_name}_alb"
  }
}

resource "aws_lb_target_group" "ec2" {
  name = "${var.vpc_name}_target_group"
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.vpc_name}_target_group"
  }
}

resource "aws_lb_target_group_attachment" "ec2" {
  target_group_arn = aws_lb_target_group.ec2.arn
  target_id = var.instance_id
  port = 80
}

