
# Create an Azure Storage Account

[![storage/create/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_create_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_create_README_md.yml)

## Prerequisites

This example assumes you have previously completed the following example:

1. [Create an Azure Resource Group](../../group/create/)

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../setup-env.sh) -->
<!-- The below code snippet is automatically added from ../../setup-env.sh -->
```sh
if [[ -z $RESOURCE_GROUP ]]; then
  export RESOURCE_GROUP=java-on-azure-$RANDOM
fi

export REGION=westus2
```
<!-- MARKDOWN-AUTO-DOCS:END -->

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-create/group-create.sh) -->
<!-- The below code snippet is automatically added from ../../core-group/group-create/group-create.sh -->
```sh
az group create --name $RESOURCE_GROUP --location $REGION
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Create the Azure Storage Account

To create the Azure Storage Account use the following command lines:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-storage/storage-create/storage-create.sh) -->
<!-- The below code snippet is automatically added from ../../storage-storage/storage-create/storage-create.sh -->
```sh
export STORAGE_ACCOUNT_NAME=storage$RANDOM

az storage account create \
  --name $STORAGE_ACCOUNT_NAME \
  --resource-group $RESOURCE_GROUP \
  --sku Standard_LRS \
  --kind StorageV2

export STORAGE_ACCOUNT_CONNECTION_STRING=$(az storage account show-connection-string --resource-group $RESOURCE_GROUP --name $STORAGE_ACCOUNT_NAME --output tsv)
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Cleanup

Do NOT forget to remove the resources once you are done running the example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-delete/group-delete.sh) -->
<!-- The below code snippet is automatically added from ../../core-group/group-delete/group-delete.sh -->
```sh
az group delete --name $RESOURCE_GROUP --yes
```
<!-- MARKDOWN-AUTO-DOCS:END -->

1m
