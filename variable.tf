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
  description = "CIDR and AZ of publc subnet"
  type        = map(object({ cidr_block = string }))
  default     = {}
}

variable "private_subnets" {
  description = "CIDR and AZ of public subnet"
  type        = map(object({ cidr_block = string }))
  default     = {}
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


