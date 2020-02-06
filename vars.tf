variable "prefix" {
    type = string
    default = null
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
    default = "Dynamic" # or Static
}