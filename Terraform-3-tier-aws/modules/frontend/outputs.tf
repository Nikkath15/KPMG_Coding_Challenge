output "elb_dns_name" {
  value = aws_elb.frontend_elb.dns_name
}
