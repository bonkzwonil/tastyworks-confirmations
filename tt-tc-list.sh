#!/bin/sh

## Why use node if bash is sufficient...

curl https://api.tastyworks.com/accounts/${1}/documents/confirmations -XGET -f -H "Authorization: ${TT_AUTH_TOKEN}"| jq -r ".data.items[]|.\"document-type-name\"" 
