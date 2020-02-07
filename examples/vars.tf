variable "subscription_id" {
  description = "Azure subscription Id."
}

variable "tenant_id" {
  description = "Azure tenant Id."
}

variable "client_id" {
  description = "Azure service principal application Id"
}

variable "client_secret" {
  description = "Azure service principal application Secret"
}

variable "prefix" {
    type = string
    default = "contoso"
}

variable "location" {
    type = string
    default = null
}

variable "sku" {
    type = string
    default = "Basic" # or Standard
}

variable "private_ip_address" {
    type = string
    default = null
}

variable "private_ip_address_allocation" {
    type = string
    default = "Static" # or Dynamic
}

variable "subnet_id" {
    type = string
    default = null
}