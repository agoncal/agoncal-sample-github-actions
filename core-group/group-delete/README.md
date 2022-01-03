
# Delete an Azure Resource Group

![group/delete/README.md](https://github.com/Azure-Samples/java-on-azure-examples/workflows/group/delete/README.md/badge.svg)

## Prerequisites

This example assumes you are logged into Azure CLI and have set your default
subscription, if you have NOT done so please go to our top-level
[README](../..)

## Delete the Resource Group

To delete the Resource Group use the following command line:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../group-delete/group-delete.sh) -->
<!-- The below code snippet is automatically added from ../group-delete/group-delete.sh -->
```sh
az group delete --name $RESOURCE_GROUP --yes
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Next steps

1. [Manage resource groups and template deployments](https://docs.microsoft.com/en-us/cli/azure/group)

1m
