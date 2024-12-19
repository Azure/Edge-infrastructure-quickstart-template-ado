# Config Variables

All variables are defined in `.pipelines/config-variables.yml`. You could change the values in this file to customize the pipeline behavior. The following is a list of variables you could change:

- `keyVaultName`: The name of the key vault you created in [Create an Azure Key Vault to Store Secrets](./Create-IaC-Resources.md).
- `azureConnectionName`: The name of the Azure Resource Manager service connection you created in [Create Azure Resource Manager Service Connection](./Create-Service-Connection.md).
- `notifyUsers`: The email address or group name to receive email notification (like a manual approval task). This could be either an email address or a group using the `[org name]\group` name syntax. Please follow the instruction [here](https://learn.microsoft.com/en-us/azure/devops/organizations/security/add-remove-manage-user-group-security-group?view=azure-devops&tabs=preview-page#create-a-custom-security-group) for group creation.
- `disableTelemetry`: Microsoft collects deployment pipeline telemetry. If you do not want to send telemetry, set this to `false`.

## Next Step

[Go back to home page](../README.md)

Learn more:

- About [troubleshooting](./TroubleShooting.md)
