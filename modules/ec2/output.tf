output "instance_id" {
  description = "the EC2 instance id"
  value       = aws_instance.this.id
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.this.arn
}

output "public_ip" {
  description = "public IPaddress of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "private IPaddress of the EC2 instance"
  value       = aws_instance.this.private_ip
}

output "availability_zone" {
  description = "AZ teh EC2 instance in"
  value       = aws_instance.this.availability_zone
}

output "ami_id" {
  description = "ID of the AMI the EC2 instance use"
  value       = data.aws_ami.ubuntu.id
}

