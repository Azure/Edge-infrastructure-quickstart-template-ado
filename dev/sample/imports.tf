# # Uncomment the following lines to import the resource group when Arc servers are provisioned by yourself.

# import {
#   id = "/subscriptions/<subscription_id>/resourceGroups/<resourceGroup>"
#   to = module.base.azurerm_resource_group.rg
# }

# import {
#   id = "/subscriptions/<subscription_id>/resourceGroups/<resourceGroup>/providers/Microsoft.AzureStackHCI/clusters/<cluster>"
#   to = module.base.module.hci_cluster.azapi_resource.cluster
# }
