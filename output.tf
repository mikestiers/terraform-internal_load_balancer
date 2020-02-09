output "ilb_resource_group_name" {
    value = azurerm_lb.example.resource_group_name
}

output "ilb_location" {
    value = azurerm_lb.example.location
}

output "ilb_name" {
  value = azurerm_lb.example.name
}

output "ilb_frontend_ip_configuration_name" {
    value = azurerm_lb.example.frontend_ip_configuration[0].name
}

output "ilb_frontend_ip_configuration_subnet_id" {
    value = azurerm_lb.example.frontend_ip_configuration[0].subnet_id
}

output "ilb_frontend_ip_configuration_private_ip_address" {
    value = azurerm_lb.example.frontend_ip_configuration[0].private_ip_address
}

output "ilb_frontend_ip_configuration_private_ip_address_allocation" {
    value = azurerm_lb.example.frontend_ip_configuration[0].private_ip_address_allocation
}