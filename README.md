# Tastytrade Trade Confirmation Downloader

## Using the undocumented API for their SPA

## Prerequisites
	- bash
	- jq
	
# Usage

## Authentication
`. ./tt-auth.sh EMAIL`
it will read an password from stdin an
gets an authentication token and sources the exported variable `TT_AUTH_TOKEN` 

all other scripts expect that token in `TT_AUTH_TOKEN` to be filled and valid.

`echo ${TT_AUTH_TOKEN}` should show it

## Getting a list of available confirmations for a given `ACCOUNT` (your account name)
`./tt-tc-list.sh ACCOUNT`

## Download a confirmation pdf
`echo NAME |./tt-tc-fetch`
can also pipe a list of names into it

## Download all confirmations at once
`./tt-tc-list.sh ACCOUNT | ./tt-tc-fetch`


## TODO: Tax 
