variable "ami_name_pattern" {
  description = "pattern of AMI Name"
  type        = string
  default     = "amzn2-ami-hvm-*-x86_64-gp2"
}

variable "ami_most_recent" {
  description = "wheter use most recent ami or not"
  type        = bool
  default     = true
}

variable "virtualization_type" {
  description = "virtualization type of AMI"
  type        = string
  default     = "hvm"
}

variable "ami_owners" {
  description = "onerID of AMI"
  type        = string
  default     = ["amazon"]
}


variable "instance_name" {
  description = "Instance Name"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "subnet be placed on the instance"
  type        = string
}

variable "security_group_ids" {
  description = "security group be attached to the instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "SSH-key name for the instance"
  type        = string
  default     = null
}

