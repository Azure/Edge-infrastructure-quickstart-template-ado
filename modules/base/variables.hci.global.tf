variable "domain_fqdn" {
  description = "The domain FQDN."
  type        = string
}

variable "adou_suffix" {
  type        = string
  description = "The suffix of Active Directory OU path."
}

variable "subnet_mask" {
  type        = string
  description = "The subnet mask for the network."
  default     = "255.255.255.0"
}

variable "default_gateway" {
  description = "The default gateway for the network."
  type        = string
}

variable "dns_servers" {
  type        = list(string)
  description = "A list of DNS server IP addresses."
}

variable "management_adapters" {
  type = list(string)
}

variable "storage_networks" {
  type = list(object({
    name               = string
    networkAdapterName = string
    vlanId             = string
    storageAdapterIPInfo = optional(object({
      physicalNode = string
      ipv4Address  = string
      subnetMask   = string
    }))
  }))
}

variable "rdma_enabled" {
  type        = bool
  description = "Indicates whether RDMA is enabled."
}

variable "storage_connectivity_switchless" {
  type        = bool
  description = "Indicates whether storage connectivity is switchless."
}

variable "account_replication_type" {
  type        = string
  default     = "ZRS"
  description = "The replication type for the storage account."
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  default     = false
  description = "Indicates whether nested items can be public."
}

variable "azure_service_endpoint" {
  type        = string
  default     = "core.windows.net"
  description = "The Azure service endpoint."
}

variable "azure_stack_lcm_user_credential_content_type" {
  type        = string
  default     = null
  description = "(Optional) Content type of the azure stack lcm user credential."
}

variable "azure_stack_lcm_user_credential_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the azure stack lcm user credential."
}

variable "cluster_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the cluster."
}

variable "compute_intent_name" {
  type        = string
  default     = "ManagementCompute"
  description = "The name of compute intent."
}

variable "compute_override_adapter_property" {
  type        = bool
  default     = true
  description = "Indicates whether to override adapter property for compute."
}

variable "compute_qos_policy_overrides" {
  type = object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
  default = {
    priorityValue8021Action_SMB     = ""
    priorityValue8021Action_Cluster = ""
    bandwidthPercentage_SMB         = ""
  }
  description = "QoS policy overrides for network settings with required properties for compute."
}

variable "compute_rdma_enabled" {
  type        = bool
  default     = false
  description = "Indicates whether RDMA is enabled for compute."
}

variable "keyvault_name" {
  type        = string
  default     = ""
  description = "The name override of the key vault."
}

variable "create_key_vault" {
  type        = bool
  default     = true
  description = "Set to true to create the key vault, or false to skip it"
}

variable "create_witness_storage_account" {
  type        = bool
  default     = true
  description = "Set to true to create the witness storage account, or false to skip it"
}

variable "witness_storage_account_name" {
  type        = string
  default     = ""
  description = "The name override of the witness storage account."
}

variable "cross_tenant_replication_enabled" {
  type        = bool
  default     = false
  description = "Indicates whether cross-tenant replication is enabled."
}

variable "default_arb_application_content_type" {
  type        = string
  default     = null
  description = "(Optional) Content type of the default arb application."
}

variable "default_arb_application_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the default arb application."
}

variable "eu_location" {
  type        = bool
  default     = false
  description = "Indicates whether the location is in EU."
}

variable "intent_name" {
  type        = string
  default     = "ManagementComputeStorage"
  description = "The name of intent."
}

variable "key_vault_location" {
  type        = string
  default     = ""
  description = "The location of the key vault."
}

variable "key_vault_resource_group" {
  type        = string
  default     = ""
  description = "The resource group of the key vault."
}

variable "keyvault_purge_protection_enabled" {
  type        = bool
  default     = true
  description = "Indicates whether purge protection is enabled."
}

variable "keyvault_soft_delete_retention_days" {
  type        = number
  default     = 30
  description = "The number of days that items should be retained for soft delete."
}

variable "keyvault_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the keyvault."
}

variable "local_admin_credential_content_type" {
  type        = string
  default     = null
  description = "(Optional) Content type of the local admin credential."
}

variable "local_admin_credential_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the local admin credential."
}

variable "min_tls_version" {
  type        = string
  default     = "TLS1_2"
  description = "The minimum TLS version."
}

variable "override_adapter_property" {
  type        = bool
  default     = true
  description = "Indicates whether to override adapter property."
}

variable "qos_policy_overrides" {
  type = object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
  default = {
    priorityValue8021Action_SMB     = ""
    priorityValue8021Action_Cluster = ""
    bandwidthPercentage_SMB         = ""
  }
  description = "QoS policy overrides for network settings with required properties."
}

variable "storage_intent_name" {
  type        = string
  default     = "Storage"
  description = "The name of storage intent."
}

variable "storage_override_adapter_property" {
  type        = bool
  default     = true
  description = "Indicates whether to override adapter property for storagte."
}

variable "storage_qos_policy_overrides" {
  type = object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
  default = {
    priorityValue8021Action_SMB     = ""
    priorityValue8021Action_Cluster = ""
    bandwidthPercentage_SMB         = ""
  }
  description = "QoS policy overrides for network settings with required properties for storage."
}

variable "storage_rdma_enabled" {
  type        = bool
  default     = false
  description = "Indicates whether RDMA is enabled for storage. Storage RDMA will be enabled if either rdma_enabled or storage_rdma_enabled is set to true."
}

variable "storage_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the storage."
}

variable "witness_path" {
  type        = string
  default     = "Cloud"
  description = "The path to the witness."
}

variable "witness_storage_account_resource_group_name" {
  type        = string
  default     = ""
  description = "The resource group of the witness storage account. If not provided, 'resource_group_name' will be used as the storage account's resource group."
}

variable "witness_storage_key_content_type" {
  type        = string
  default     = null
  description = "(Optional) Content type of the witness storage key."
}

variable "witness_storage_key_tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the witness storage key."
}

variable "witness_type" {
  type        = string
  default     = "Cloud"
  description = "The type of the witness."
}

variable "operation_type" {
  type        = string
  default     = "ClusterProvisioning"
  description = "The intended operation for a cluster."

  validation {
    condition     = contains(["ClusterProvisioning", "ClusterUpgrade"], var.operation_type)
    error_message = "operation_type must be either 'ClusterProvisioning' or 'ClusterUpgrade'."
  }
}
