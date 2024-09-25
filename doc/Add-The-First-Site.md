# Add The First Site

## Set secrets for the first site

1. [Understand how secrets are structured](./Secrets-Structure.md).
2. Create the following secrets in the Key Vault:
    - `domainAdminUser`: The admin user name of domain controller. (Leave it empty if you prepare AD yourself)
    - `domainAdminPassword`: The admin user password of domain controller. (Leave it empty if you prepare AD yourself)
    - `<site>-localAdminUser`: The admin user name of HCI hosts.
    - `<site>-localAdminPassword`: The admin user password of HCI hosts.
    - `<site>-deploymentUserPassword`: The password of deployment user which will be created during HCI deployment.
    - `arbServicePrincipalId`: The **client** ID of the service principal for Arc Resource Bridge deployment. (Can be the same as AZURE_CLIENT_ID)
    - `arbServicePrincipalSecret`: The client secret of the service principal for Arc Resource Bridge deployment.
    - `rpServicePrincipalObjectId` (Check [Getting rpServicePrincipalObjectId](./Get-RP-Service-Principal-Id.md) to get its value.)

## Add your first site with static template

1. Create a branch from `main` by running `git checkout -b <yourFeatureBranch>`.
2. *(Optional)* This template predefined resource names. You can change them following [Edit Resource Naming Conventions](./Naming-Conventions.md).
> [!NOTE]
> If you connect Arc for servers by your own, the result of resource group's naming convention must be **the same** with the resource group for Arc for servers.

3. Rename `dev/sample` to `dev/<your location>`. Uncomment the sample code and then edit the variables in the `dev/<your location>/main.tf` commit and push.
4. *(Optional)* Skip this step if you haven't provisioned Arc for servers yet.

   If the Arc servers are already provisioned by yourself, go to `dev/<your location>/imports.tf` and uncomment the import block, change the placeholders to your resource group that contains the Arc servers. Open `dev/<your location>/main.tf` and add `enableProvisioners = false` in the module block.
5. *(Optional)* Follow [Sharing HCI dependencies](./Sharing-HCI-Dependencies.md) to use shared key vault and witness storage account.
6. Create a pull request to `main`. After approval, changes will be applied automatically. After the successful deployment, following resources will be created:
    1. A resource group name `<site>-rg`
    2. A KeyVault named `<site>-kv`: Contains secrets that used for deploy
    3. Arc servers that make up the HCI cluster
    4. A storage account used for HCI cloud witness
    5. An HCI cluster name `<site>-cl`
    6. Arc Resource Bridge named `<site>-cl-arcbridge`
    7. Custom location of ARB named `<site>-customLocation`
    8. Two storage paths named `UserStorage1`, `UserStorage2`
6. After the pull request is merged, new sites will be applied.

## Next Step

[Go back to home page](../README.md)

Learn more:

- About [your CI/CD pipeline running status](./View-pipeline.md)
- About [troubleshooting](./TroubleShooting.md)
- About [enabling arc extensions for all sites](../README.md#enable-opt-in-features-for-all-sites)
- About [adding new stage](./Customize-Stages.md)
