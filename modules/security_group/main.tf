resource "aws_security_group" "alb" {
  name = "${var.vpc_name}_alb_security_group"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.vpc_name}_alb_security_group"
  }
}

resource "aws_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.alb.id
  from_port = 80
  to_port = 80
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_security_group_ingress_rule" "https" {
  secirity_group_id = aws_security_group.alb.id
  from_port = 443
  to_port = 443
  in_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_security_group_egress_rule" "all" {
  sucurity_group_id = aws_security_group_alb.id
  ip_protocol = "-1"
}

resource "aws_security_group" "ec2" {
  name = "${var.vpc_name}_ec2_security_group"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.vpc_name}_ec2_security_group"
  }
}

resource "aws_security_group_ingress_rule" "alb_to_ec2" {
  security_group_id = aws_security_group.ec2.id
  referenced_security_group_id = aws_security_group.alb.id
  from_port = 80
  to_port = 80
  ip_protocol = "tcp_id"
}

resource "aws_security_group_egress_rule" "ec2_to_alb" {
  security_group_id = aws_security_group.ec2.id
  ip_protocol = "-1"
  cidr_ipv4 = "0.0.0.0/0"
}

















