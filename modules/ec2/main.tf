data "aws_ami" "ubuntu" {
  most_recent = var.ami_most_recent

  filter {
    name   = "name"
    values = [var.ami_name_pattern]
  }

  filter {
    name   = "virtualization-type"
    values = [var.virtualization_type]
  }

  owners = var.ami_owners
}

resource "aws_instance" "this" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ec2_ids
  key_name               = var.key_name

  tags = {
    Name = var.instance_name
  }
}


