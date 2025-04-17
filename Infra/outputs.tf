output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "web_security_group_id" {
  value = module.security_groups.web_sg_id
}

output "db_security_group_id" {
  value = module.security_groups.db_sg_id
}

output "web_instance_ids" {
  value = module.web_servers.web_instance_ids
}

output "db_instance_id" {
  value = module.database.db_instance_id
}
