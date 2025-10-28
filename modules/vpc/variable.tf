variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "public_subnets" {
  description = "CIDR and AZ at public_subnet"
  type        = map(object({ cidr_block = string }))
  default = {}
}

variable "private_subnets" {
  description = "CIDR and AZ at prvate_subnet"
  type        = map(object({ cidr_block = string }))
  default = {}
}
