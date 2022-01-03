export DELETE_AFTER=$(( `date +%s` + 7200))
az group update --name $RESOURCE_GROUP --set tags.'DeleteAfter'="$DELETE_AFTER"
