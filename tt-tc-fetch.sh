#!/bin/sh

## Why use node if bash is sufficient...
echo Fetching all entries from stdin
while read -r f; do
		echo -n $f...;
		if [ -f $f.pdf ]; then
				echo skipping.;
		else
				if curl https://api.tastyworks.com/accounts/${TT_ACCOUNT}/documents/$i -fs -H "Authorization: ${TT_AUTH_TOKEN}" -o $f.pdf;
				then echo ok.
				else echo failed.
				fi;
				sleep 1;
		fi;
done
