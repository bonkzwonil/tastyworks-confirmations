#!/bin/bash

## Why use node if bash is sufficient...
if [ -z $1 ]; 
read -s -p "Login for $1:" password

TT_AUTH_TOKEN=$(curl https://api.tastyworks.com/sessions -XPOST -H "Content-Type: application/json" -d "{\"login\": \"${1}\", \"password\": \"${password}\"}" -f | jq -r ".data.\"session-token\"")

export TT_AUTH_TOKEN;
echo Token ${TT_AUTH_TOKEN}
