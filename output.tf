output "ilb_name" {
  value = azurerm_lb.example.name
  #value = var.location
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