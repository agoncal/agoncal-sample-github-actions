az storage blob upload-batch \
  --source web \
  --destination '$web' \
  --account-name $STORAGE_ACCOUNT_NAME \
  --connection-string $STORAGE_ACCOUNT_CONNECTION_STRING
