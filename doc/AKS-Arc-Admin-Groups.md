# AKS Arc Admin Groups

## Find the groups you are a member of

Step 1. Go to [Microsoft Entra admin center](https://entra.microsoft.com/#home). 

Step 2. Select Users -> All users. Search by your name.

Step 3. Under ‘Manage’, click on Groups. You will see a list of groups you are a member of. Select one group to be the admin group. Copy the Object Id and paste it into variables.aks-arc.global.tf. Then, uncomment the line to set the default value.

```
variable "rbac_admin_group_object_ids" {
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  type        = list(string)
  # Add your default admin groups here. Refer to the documentation under doc/AKS-Arc-Admin-Groups.md for more information.
  default     = ["<your-admin-group-object-id>"]
}
```

## Next Steps

[Go back to home page](../README.md)

## Learn more
[Troubleshooting](./TroubleShooting.md)
