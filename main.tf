# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = var.prefix
  location = var.location
    tags = {
    environment = terraform.workspace
    costcenter  = "it"
  }
}