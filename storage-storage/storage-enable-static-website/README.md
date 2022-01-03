
# Enable static website hosting

[![storage/enable-static-website/README.md](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_enable-static-website_README_md.yml/badge.svg)](https://github.com/Azure-Samples/java-on-azure-examples/actions/workflows/storage_enable-static-website_README_md.yml)

## Prerequisites

This example assumes you have previously completed the following examples:

1. [Create an Azure Resource Group](../../group/create/)

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../setup-env.sh) -->
<!-- MARKDOWN-AUTO-DOCS:END -->

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-create/group-create.sh) -->
<!-- MARKDOWN-AUTO-DOCS:END -->

1. [Create an Azure Storage Account](../create/)

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-storage/storage-create/storage-create.sh) -->
<!-- MARKDOWN-AUTO-DOCS:END -->

## Enable static website hosting

To enable static website hosting execute the following command lines:

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../storage-storage/storage-enable-static-website/storage-enable-static-website.sh) -->
<!-- MARKDOWN-AUTO-DOCS:END -->

You can browse to the URL shown and it will show you a 404 error page as the
content has not be uploaded yet.

## Cleanup

Do NOT forget to remove the resources once you are done running the example.

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=../../core-group/group-delete/group-delete.sh) -->
<!-- MARKDOWN-AUTO-DOCS:END -->

1m
