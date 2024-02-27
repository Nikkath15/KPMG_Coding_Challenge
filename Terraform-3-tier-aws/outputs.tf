output "vpc_id" {
  value = module.vpc.vpc_id
}

output "frontend_elb_dns_name" {
  value = module.frontend.elb_dns_name
}

output "app_instance_ids" {
  value = module.app.instance_ids
}

output "db_instance_endpoint" {
  value = module.database.instance_endpoint
}
