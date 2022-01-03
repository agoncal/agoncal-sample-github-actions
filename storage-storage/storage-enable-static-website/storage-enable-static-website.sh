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
