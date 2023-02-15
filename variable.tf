
variable "resource_group_name" {
  type = string
}
variable "rg_locations" {
  type = any
}
variable "address_space_vnet" {
  type = list(string)
}
variable "public_ip_vm" {
  type = list(string)
}



# variable "resource_group_name" {
#   type = string
# }
variable "rglocation" {
  type = list(string)
}
# variable "address_space_vnet" {
#   type = list(string)
# }
# variable "public_ip_vm" {
#   type = list(string)
# }
