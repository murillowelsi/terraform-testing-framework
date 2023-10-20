run "should_contain_valid_storage_account_config" {
  command = plan

  assert {
    condition     = azurerm_resource_group.resource_group.name == "rg-terraform"
    error_message = "Resource group name did not match expected"
  }

  assert {
    condition = length(azurerm_resource_group.resource_group.tags) != 0
    error_message = "Resource group tags key should be present"
  }

  assert {
    condition = azurerm_resource_group.resource_group.name != "" 
    error_message = "Resource group name should not be empty"
  }
}
