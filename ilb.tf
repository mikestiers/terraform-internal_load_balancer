resource "azurerm_lb" "example" {
  name                = "TestLoadBalancer"
  location            = var.location
  resource_group_name = "${azurerm_resource_group.example.name}"

  frontend_ip_configuration {
    name                          = "PrivateIPAddress"
    subnet_id                     = var.subnet_id
    private_ip_address            = var.private_ip_address
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

# resource "azurerm_lb_backend_address_pool" "example" {
#   resource_group_name = "${azurerm_resource_group.example.name}"
#   loadbalancer_id     = "${azurerm_lb.example.id}"
#   name                = "BackEndAddressPool"
# }

# resource "azurerm_lb_outbound_rule" "example" {
#   resource_group_name     = "${azurerm_resource_group.example.name}"
#   loadbalancer_id         = "${azurerm_lb.example.id}"
#   name                    = "OutboundRule"
#   protocol                = "Tcp"
#   backend_address_pool_id = "${azurerm_lb_backend_address_pool.example.id}"

#   frontend_ip_configuration {
#     name = "PublicIPAddress"
#   }
# }

# resource "azurerm_lb_rule" "example" {
#   resource_group_name            = "${azurerm_resource_group.example.name}"
#   loadbalancer_id                = "${azurerm_lb.example.id}"
#   name                           = "LBRule"
#   protocol                       = "Tcp"
#   frontend_port                  = 3389
#   backend_port                   = 3389
#   frontend_ip_configuration_name = "PublicIPAddress"
# }

# resource "azurerm_lb_nat_rule" "example" {
#   resource_group_name            = "${azurerm_resource_group.example.name}"
#   loadbalancer_id                = "${azurerm_lb.example.id}"
#   name                           = "RDPAccess"
#   protocol                       = "Tcp"
#   frontend_port                  = 3389
#   backend_port                   = 3389
#   frontend_ip_configuration_name = "PublicIPAddress"
# }

# resource "azurerm_lb_nat_pool" "example" {
#   resource_group_name            = "${azurerm_resource_group.example.name}"
#   loadbalancer_id                = "${azurerm_lb.example.id}"
#   name                           = "SampleApplicationPool"
#   protocol                       = "Tcp"
#   frontend_port_start            = 80
#   frontend_port_end              = 81
#   backend_port                   = 8080
#   frontend_ip_configuration_name = "PublicIPAddress"
# }

# resource "azurerm_lb_probe" "example" {
#   resource_group_name = "${azurerm_resource_group.example.name}"
#   loadbalancer_id     = "${azurerm_lb.example.id}"
#   name                = "ssh-running-probe"
#   port                = 22
# }
