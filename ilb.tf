resource "azurerm_lb" "example" {
  name                = "TestLoadBalancer"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.example.name}"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    private_ip_address = var.private_ip_address
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}