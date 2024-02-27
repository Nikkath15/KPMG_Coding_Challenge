output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}

output "app_subnets" {
  value = aws_subnet.app_subnet[*].id
}

output "db_subnets" {
  value = aws_subnet.db_subnet[*].id
}
