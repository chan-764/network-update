output "updated_security_group_id" {
  value = module.sg_and_route_update.security_group_id
}

output "updated_route_table_id" {
  value = module.sg_and_route_update.route_table_id
}
