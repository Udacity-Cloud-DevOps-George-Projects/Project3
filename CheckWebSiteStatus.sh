#!/bin/bash

url='https://udaproject3.s3.amazonaws.com/index.html'
code=`curl -sL --connect-timeout 20 --max-time 30 -w "%{http_code}\\n" "$url" -o /dev/null`

if [ "$code" = "200" ]; then
  echo "Website $url is online."
else
  echo "Website $url seems to be offline."
  exit 1
fi
