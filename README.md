# agoncal-samples-github-actions
Samples using GitHub actions

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./core-group/group-create/group-create.sh) -->
<!-- The below code snippet is automatically added from ./core-group/group-create/group-create.sh -->
```sh
if [[ -z $RESOURCE_GROUP ]]; then
  export RESOURCE_GROUP=java-on-azure-$RANDOM
fi

export REGION=westus2

az group create --name $RESOURCE_GROUP --location $REGION
```
<!-- MARKDOWN-AUTO-DOCS:END -->

## Run Markdown Autodocs Locally

Install Markdown Autodocs

```
npm i -g markdown-autodocs
```

Invoke Markdown Autodocs

```
markdown-autodocs -c code-block -o ./README.md 
```
