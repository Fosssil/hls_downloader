#!/bin/bash

# Enter Name
read -p "Enter file name to save: " NAME

# Add url
echo "Paste the url and press Enter:"
read -r URL

echo -e "\e[32mURL is $URL\e[0m"

echo -e  "\e[32mFile Name is $NAME\e[0m"

/usr/bin/n-m3u8dl-re "$URL" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:148.0) Gecko/20100101 Firefox/148.0" \
    -H "Referer: https://player.hotmart.com/" \
    -H "Origin: https://player.hotmart.com" \
    --append-url-params \
    --auto-select \
    -M format=mp4 \
    --save-name "$NAME"
