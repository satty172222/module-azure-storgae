
variable "resource_group_name" {
  description = "The name of the resource group which all resources belong to."
  default     = ""
}
variable "location" {
  description = "The name of the resource group which all resources belong to."
  default     = "AustraliaEast"
}

variable "storage_account_name" {
  description = "The Name of the Storage Account"
  type        = string
  default     = "testetsmcstorage20201203"
}
variable "account_kind" {
  default     = "StorageV2"
  description = "account kind"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  type        = string
  default     = "LRS"
}

variable "account_tier" {
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot"
  type        = string
  default     = "Standard"
}

variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true"
  type        = bool
  default     = true
}
variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_2 (contrary to AZ default option)"
  type        = string
  default     = "TLS1_2"
}
