
# Create an Azure Resource Group

![group/create/README.md](https://github.com/Azure-Samples/java-on-azure-examples/workflows/group/create/README.md/badge.svg)

## Prerequisites

This example assume you are logged into Azure CLI and have set your default
subscription, if you have NOT done so please go to our top-level
[README](../../)

## Setup your environment variables

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../setup-env.sh) -->
<!-- The below code snippet is automatically added from ../../setup-env.sh -->
```sh
if [[ -z $RESOURCE_GROUP ]]; then
  export RESOURCE_GROUP=java-on-azure-$RANDOM
fi

export REGION=westus2
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Create the Resource Group

To setup the environment variables needed to create the Resource Group execute
the command lines below:
To create the Resource Group use the following command line:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-create/group-create.sh) -->
<!-- The below code snippet is automatically added from ../group-create/group-create.sh -->
```sh
az group create --name $RESOURCE_GROUP --location $REGION
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Tag a Resource Group

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-tag/group-tag.sh) -->
<!-- The below code snippet is automatically added from ./group-tag.sh -->
```sh
export DELETE_AFTER=$(( `date +%s` + 7200))
az group update --name $RESOURCE_GROUP --set tags.'DeleteAfter'="$DELETE_AFTER"
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Cleanup

Do NOT forget to remove the resources once you are done running the example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-delete/group-delete.sh) -->
<!-- The below code snippet is automatically added from ../group-delete/group-delete.sh -->
```sh
az group delete --name $RESOURCE_GROUP --yes
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Next steps

1. [Manage resource groups and template deployments](https://docs.microsoft.com/en-us/cli/azure/group)

1m
