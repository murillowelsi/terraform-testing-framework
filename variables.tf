variable "location" {
  description = "Region where resources will be created on Azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Storage Account tier on Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication data type of Storage Account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name_prefix" {
  type        = string
  description = "Resource group name prefix"

  validation {
    condition     = length(var.resource_group_name_prefix) == 2
    error_message = "The resource_group_prefix value must be \"rg\"."
  }
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"

  validation {
    condition     = can(regex("^rg-", "rg-${var.resource_group_name}"))
    error_message = "The resource_group_name value must be a valid rg id, starting with \"rg-\"."
  }
}

variable "storage_account_name" {
  description = "Storage account name on Azure"
  type        = string
  default     = "murillowelsiterraform"
}

variable "container_name" {
  description = "Container name on Azure"
  type        = string
  default     = "container-terraform"
}

