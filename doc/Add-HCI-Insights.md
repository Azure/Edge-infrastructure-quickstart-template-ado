# Add HCI Insights

Go to `modules/base/variables.hci-extensions.global.tf`. Change default value of `enable_insights` from `false` to `true.`

Do the same to enable alerts by toggling the default value of `enable_alerts` for HCI.

## Use existing data collection rule and log analytics workspace

Go to `modules/base/variables.hci-extensions.global.tf`. Change the default value of `data_collection_rule_resource_id` from `""` to `"<your_existing_data_collection_rule_azure_resource_id>"`.

## Next Step

[Go back to home page](../README.md)

## Learn more

[Troubleshooting](./TroubleShooting.md)
