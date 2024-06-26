data "azurerm_resource_group" "masterrg" {
    name = "masterRG"
    
  
}

resource "azurerm_virtual_network" "mastervnet" {
    name = "vnet1"
    resource_group_name = data.azurerm_resource_group.masterrg.name
    location = "east us"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  
}