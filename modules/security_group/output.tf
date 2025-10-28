output "ec2_security_group_ids" {
  description = "ID of security group for EC2"
  value       = [aws_security_group.ec2.id]
}

output "ec2_security_group_arn" {
  description = "ARN of security group for the EC2"
  value       = aws_security_group.ec2.arn
}

output "alb_security_group_ids" {
  description = "ID of security group for ALB"
  value       = [aws_security_group.alb.id]
}

output "alb_security_group_arn" {
  description = "ARN of security group for the ALB"
  value       = aws_security_group.alb.arn
}
