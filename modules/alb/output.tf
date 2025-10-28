output "alb_dns_name" {
  description = "DNS name of the alb"
  value = aws_lb.alb.dns_name
}

output "alb_zone_id" {
  description = "zone ID of the alb"
  value = aws_lb.alb.zone_id
}
