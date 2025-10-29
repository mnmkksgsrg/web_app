variable "instance_name" {
  type = string 
}

variable "subnet_id" {
  type = string
}

variable "security_group_ec2_ids" {
  type = list(string)
}

