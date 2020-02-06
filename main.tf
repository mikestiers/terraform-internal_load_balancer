# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.prefix
  location = var.location
    tags = {
    environment = terraform.workspace
    costcenter  = "it"
  }
}