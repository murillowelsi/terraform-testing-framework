run "should_have_all_required_keys_in_storage_account" {
  command = plan

  assert {
    condition     = contains(keys(azurerm_storage_account.storage_account), "name")
    error_message = "A chave 'name' em 'storage_account' não existe."
  }

  assert {
    condition     = contains(keys(azurerm_storage_account.storage_account), "resource_group_name")
    error_message = "A chave 'resource_group_name' em 'storage_account' não existe."
  }

  assert {
    condition     = contains(keys(azurerm_storage_account.storage_account), "location")
    error_message = "A chave 'location' em 'storage_account' não existe."
  }

  assert {
    condition     = contains(keys(azurerm_storage_account.storage_account), "account_tier")
    error_message = "A chave 'account_tier' em 'storage_account' não existe."
  }

  assert {
    condition     = contains(keys(azurerm_storage_account.storage_account), "account_replication_type")
    error_message = "A chave 'account_replication_type' em 'storage_account' não existe."
  }
}
