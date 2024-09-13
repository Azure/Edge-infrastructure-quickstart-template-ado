# Getting rpServicePrincipalObjectId

## Use UI
Go to [Microsoft Entra Admin Center](https://entra.microsoft.com/#home). Go to Identity -> Applications -> Enterprise applications. Remove the Application type filter.

<img src="./img/rpObj1.png" alt="rpObj1" width="800"/>

Then, click the Application ID starts with filter. Input `1412d89f-b8a8-4111-b4fd-e82905cbd85d` and apply.

<img src="./img/rpObj2.png" alt="rpObj2" width="800"/>

Click `Microsoft.AzureStackHCI Resource Provider`. Copy its Object ID, this value needs to be set to repository secret `rpServicePrincipalObjectId`.

<img src="./img/rpObj3.png" alt="rpObj3" width="800"/>

## Use Az CLI

Run `az ad sp list --filter "appid eq '1412d89f-b8a8-4111-b4fd-e82905cbd85d'"`. Copy the value in `id` field.

<img src="./img/rpObj4.png" alt="rpObj4" width="800"/>