resource "azurerm_lb" "example" {
  name                = "TestLoadBalancer"
  location            = var.location
  resource_group_name = "${azurerm_resource_group.example.name}"

  frontend_ip_configuration {
    name                          = "PrivateIPAddress"
    subnet_id                     = "/subscriptions/3d13f565-2dab-4443-a3cd-a600bb48ce1c/resourceGroups/contoso/providers/Microsoft.Network/virtualNetworks/contoso/subnets/default"
    private_ip_address            = "10.1.0.6"
    private_ip_address_allocation = "Static"
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
