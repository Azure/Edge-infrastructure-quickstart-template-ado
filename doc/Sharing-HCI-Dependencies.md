# Sharing HCI dependencies

The default setting of the QuickStart template will create a key vault and a witness storage account for each site. You may leverage the key vault created in the IaC steps for HCI deployment in a shared manner. Creating another storage account for witness is recommended to avoid accidentally overwriting of Terraform states.

## How to configure the shared Key Vault for HCI deployment

Open `modules/base/variables.hci.global.tf`, change the following

```
    variable "create_key_vault" {
      type        = bool
-     default     = true
+     default     = false
      description = "Set to true to create the key vault, or false to skip it"
    }

    variable "keyvault_name" {
      type        = string
-     default     = ""
+     default     = "<your_keyvault_name>"
      description = "The name override of the key vault."
    }

    variable "key_vault_resource_group" {
      type        = string
-     default     = ""
+     default     = "<your_keyvault_resource_group>"
      description = "The resource group of the key vault."
    }
```

The following secrets are used in HCI deployment. Do not use the same secret name to avoid conflicts.

- AzureStackLCMUserCredential
- LocalAdminCredential
- DefaultARBApplication
- WitnessStorageKey

These HCI secrets will be created in IaC pipeline from the secrets you set in the Key Vault in the format of `<hci_cluster_name>-<secret_name>`.

## How to configure the shared witness account for HCI deployment

Open `modules/base/variables.hci.global.tf`, change the following

```
    variable "create_witness_storage_account" {
      type        = bool
-     default     = true
+     default     = false
      description = "Set to true to create the witness storage account, or false to skip it"
    }

    variable "witness_storage_account_name" {
      type        = string
-     default     = ""
+     default     = "<your_keyvault_name>"
      description = "The name override of the witness storage account."
    }

    variable "witness_storage_account_resource_group_name" {
      type        = string
-     default     = ""
+     default     = "<your_keyvault_resource_group>"
      description = "The resource group of the witness storage account. If not provided, 'resource_group_name' will be used as the storage account's resource group."
    }
```
