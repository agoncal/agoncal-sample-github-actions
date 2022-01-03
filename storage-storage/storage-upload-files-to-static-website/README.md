
# Upload files to static website

[![storage/upload-files-to-static-website/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_upload-files-to-static-website_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_upload-files-to-static-website_README_md.yml)

## Prerequisites

This example assumes you have previously completed the following examples:

1. [Create an Azure Resource Group](../../group/create/)

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../setup-env.sh) -->
<!-- The below code snippet is automatically added from ../../setup-env.sh -->

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-create/group-create.sh) -->
<!-- The below code snippet is automatically added from ./group-create.sh -->

2. [Create an Azure Storage Account](../storage/create/)

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-storage/storage-create/storage-create.sh) -->
<!-- The below code snippet is automatically added from ../../setup-env.sh -->

4. [Enale static website hosting](../enable-static-website/)

<!-- workflow.cron(0 3 * * 4) -->
<!-- workflow.include(../enable-static-website/README.md) -->

## Upload files to static website

To upload a directory containing your static website use the following command
line:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-upload-files-to-static-website.sh) -->
<!-- The below code snippet is automatically added from ../../setup-env.sh -->

<!-- workflow.run() 

  sleep 60
  cd ../..

  -->

## Cleanup

Do NOT forget to remove the resources once you are done running the example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-delete/group-delete.sh) -->
<!-- The below code snippet is automatically added from ../group-delete/group-delete.sh -->
```sh
az group delete --name $RESOURCE_GROUP --yes
```
<!-- MARKDOWN-AUTO-DOCS:END -->

1m
