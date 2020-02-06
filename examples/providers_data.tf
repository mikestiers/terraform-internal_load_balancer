provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  version         = "~> 1.0"
}

#Set the terraform backend
terraform {
  required_version = ">= 0.12.12"
  backend "azurerm" {} #Backend variables are initialized through the secret and variable folders
}
