output "ilb_name" {
  value = module.ilb.ilb_name
  #value = var.location
}

output "ilb_frontend_ip_configuration_name" {
    value = module.ilb.ilb_frontend_ip_configuration_name
}

output "ilb_frontend_ip_configuration_subnet_id" {
    value = module.ilb.ilb_frontend_ip_configuration_subnet_id
}

output "ilb_frontend_ip_configuration_private_ip_address" {
    value = module.ilb.ilb_frontend_ip_configuration_private_ip_address
}

output "ilb_frontend_ip_configuration_private_ip_address_allocation" {
    value = module.ilb.ilb_frontend_ip_configuration_private_ip_address_allocation
}