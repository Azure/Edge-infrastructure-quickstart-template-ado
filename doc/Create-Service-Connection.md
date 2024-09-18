# Create Azure Resource Manager Service Connection

> [!NOTE]
> This step creates a service connection to connect Azure resources from Azure DevOps.

## Create the service connection

You can follow the document [here](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops). Workload identity federation is recommended for the best security model. The other methods are also supported.

### Use workload identity federation (automatic)

Choose **Subscription** scope. Select the resource group containing IaC resources (the backend storage account and the key vault).

A service principal with a random UUID name will be added to your owned service principals. It is better to rename the service principal with a friendly name and give the operation team owner permission for future management in your team.

### Use workload identity federation (manual)

Choose **Subscription** scope.

## Grant additional permissions for the associated service principal

The following permissions need to be added to the associated service principal:
  - Contributor: Creates resources to your subscription
  - User Access Administrator: Grants roles for HCI deployment. [HCI doc](https://learn.microsoft.com/en-us/azure-stack/hci/deploy/deployment-arc-register-server-permissions?tabs=powershell)
  - Blob data owner: Persists Terraform state to Azure blob.
  - Key Vault secret officer: Creates secrets in Key Vault.

## Set service connection name in the pipeline

Open `.pipelines/templates/site-cd-steps.yml`, change the following `<your_service_connection_name>` to the service connection name you just created.

```yml
  - name: azureConnectionName
    type: string
    default: <your_service_connection_name> # TODO: Change this to your service connection name
```

## Next Step

Search for `TODO` in the repo to ensure you have finished all the prerequisites.

[Create Pipeline](./Create-Pipeline.md)
