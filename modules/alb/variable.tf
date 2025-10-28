variable "alb_name" {
  description = "ALB Name"
  type = string
}

variable "instance_name" {
  description = "Instance Name"
  type = string
}

variable "security_group_alb_ids" {
  description = "ID of secrity group for the alb"
  type = list(string)
  default = []
}

variable "vpc_name" {
  description = "VPC Name"
  type = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type = string
}

variable "public_subnet_ids" {
  description = "list of public subnet IDs"
  type = list(string)
}

variable "instance_id" {
  description = "ID of the Ec2 instance"
  type = string
}

