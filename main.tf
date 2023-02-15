
##################################for Public accees###########
resource "azurerm_route_table" "ot_public" {
  count = length(var.rg_locations)
  name                = "ot_public_routetable${count.index}"
  resource_group_name = var.resource_group_name
  location           = element(var.rg_locations, count.index )

  route {
    name                   = "internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "Internet"
  }
}

############################# for pVT  ###################################
resource "azurerm_route_table" "ot_private" {
  count = length(var.rglocation)
  name                = "ot_private_routetable-${count.index}"
  resource_group_name = var.resource_group_name
  location =  element(var.rglocation, count.index ) 

  route {
    name                   = "route1-${count.index}"
    address_prefix      = element(var.address_space_vnet, count.index) 
    #"0.0.0.0/0"
    #element(var.address_space_vnet, count.index) 
    next_hop_type          = "VnetLocal" 
    # "Internet"
    # "VnetLocal" 
    
  }
}

