provider "azurerm" {

   version = "~>2.0"
     subscription_id="434f61bf-a549-4b55-8625-75e78a0651ea"
     tenant_id="89e00502-3ff7-468c-adb2-b78702ffa74f"
     client_id="d437ca6f-0f6f-40e9-af60-3db396e0d269"
  features {
  }
}

            # KEY(fixed-hash)      #name

#  Create an resource group
resource "azurerm_resource_group" "RS2" {

    name = var.rgname   #MYRG
    location = var.location
  
}

# Create an Vnet
#CTRL KU, CTRL KU
resource "azurerm_virtual_network" "VN2" {

  name                = var.vnet2
  location            = azurerm_resource_group.RS2.location
  resource_group_name = azurerm_resource_group.RS2.name
  address_space       = var.vnetaddresspace2
  subnet {
    name           = var.testsubnet
    address_prefix = var.subnetaddress2
  }
  
}


