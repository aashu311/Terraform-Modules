resource "azurerm_storage_account" "masterStorageAcc" {
    name = "masterstorageacc311"
    location = "east us"
    resource_group_name = data.azurerm_resource_group.masterrg.name
    account_tier             = "Standard"
    account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "container" {
  name                  = "storage-container"
  storage_account_name  = azurerm_storage_account.masterStorageAcc.name
  container_access_type = "private"
}