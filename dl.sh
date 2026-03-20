#!/bin/bash
# Save this as 'dl.sh'
read -p "Enter file name to save: " NAME

echo "Paste the url and press Enter:"
read -r URL
echo "URL is $URL"
echo "Location is $NAME"
/usr/bin/n-m3u8dl-re "$URL" \
    -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:148.0) Gecko/20100101 Firefox/148.0" \
    -H "Referer: https://player.hotmart.com/" \
    -H "Origin: https://player.hotmart.com" \
    --append-url-params \
    --auto-select \
    -M format=mp4 \
    --save-name "$NAME"
