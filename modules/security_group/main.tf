resource "aws_security_group" "alb" {
  name   = "${var.vpc_name}_alb_sg"
  vpc_id = var.vpc_id
  tags   = {
    Name = "${var.vpc_name}_alb_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.alb.id
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "all" {
  security_group_id = aws_security_group.alb.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_security_group" "ec2" {
  name   = "${var.vpc_name}_ec2_sg"
  vpc_id = var.vpc_id
  tags   = {
    Name = "${var.vpc_name}_ec2_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "alb_to_ec2" {
  security_group_id            = aws_security_group.ec2.id
  referenced_security_group_id = aws_security_group.alb.id
  from_port                    = 80
  to_port                      = 80
  ip_protocol                  = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "ec2_all" {
  security_group_id = aws_security_group.ec2.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

