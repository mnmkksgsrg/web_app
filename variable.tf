variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "my_vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDR and AZ of public subnets"
  type        = map(object({ cidr_block = string }))
}

variable "private_subnets" {
  description = "CIDR and AZ of private subnets"
  type        = map(object({ cidr_block = string }))
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
  default     = "my_instance"
}

variable "alb_name" {
  description = "ALB Name"
  type        = string
  default     = "my_alb"
}

