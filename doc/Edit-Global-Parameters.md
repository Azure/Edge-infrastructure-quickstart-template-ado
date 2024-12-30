# Edit Global Parameters
  
You may edit `modules/base` to customize your deployment template for all sites. You may add default values for your sites in `modules/base/variables.*.tf`.

Variables are grouped by products. For example, HCI related variables are defined in `modules/base/variables.hci.*.tf`. You can go to the corresponding file for the product you want to modify its configurations.

For global configurations which applies to all the sites, you can add default values in `modules/base/variables.<product>.global.tf`. For example, if you want to set the global parameter of your AD FQDN, you can go to `modules/base/variables.hci.global.tf` and add a default attribute. (Do not add the starting `+`.)

```hcl
  variable "domain_fqdn" {
    description = "The domain FQDN."
    type        = string
+   default     = "stores.contoso.com"
  }
```

# Site specific variables

Site level variables are defined in `modules/base/variables.<product>.site.tf`. If you think a certain variable is actually globally shared, you can move the definition from `<product>.site.tf` to `<product>.global.tf` and add a default value for it.

# Pass through variables and reference variables

In most cases, you don’t need to worry about these variables. They are defined in `<product>.misc.tf`. Pass-through variables are used to make Terraform modules function properly. Reference variables are utilized by this product, but their definitions are located in another product. You can find their definitions there.

## Next Steps

[Go back to home page](../README.md)

## Learn more

[Troubleshooting](./TroubleShooting.md)
