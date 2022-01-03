
# Enable static website hosting

[![storage/enable-static-website/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_enable-static-website_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_enable-static-website_README_md.yml)

## Prerequisites

This example assumes you have previously completed the following examples:

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

1. [Create an Azure Storage Account](../create/)

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

## Enable static website hosting

To enable static website hosting execute the following command lines:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-storage/storage-enable-static-website/storage-enable-static-website.sh) -->
<!-- The below code snippet is automatically added from ../../storage-storage/storage-enable-static-website/storage-enable-static-website.sh -->
```sh
az storage blob service-properties update \
  --account-name $STORAGE_ACCOUNT_NAME \
  --connection-string $STORAGE_ACCOUNT_CONNECTION_STRING \
  --static-website \
  --404-document 404.html \
  --index-document index.html

az storage account show \
  --name $STORAGE_ACCOUNT_NAME \
  --query primaryEndpoints.web \
  --output tsv
```
<!-- MARKDOWN-AUTO-DOCS:END -->

You can browse to the URL shown and it will show you a 404 error page as the
content has not be uploaded yet.

## Cleanup

Do NOT forget to remove the resources once you are done running the example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-delete/group-delete.sh) -->
<!-- The below code snippet is automatically added from ../../core-group/group-delete/group-delete.sh -->
```sh
az group delete --name $RESOURCE_GROUP --yes
```
<!-- MARKDOWN-AUTO-DOCS:END -->

1m
