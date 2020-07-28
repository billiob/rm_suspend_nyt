#!/bin/sh
set -e
set -x
set -u

DIR_RM=/usr/share/remarkable
URL="https://fau.re/rm/$(date '+%F').png"
TODAY_FILE=$DIR_RM/nyt.$(date '+%F').png
PNG_SUSPEND=$DIR_RM/sleeping.png
PNG_SLEEPING=$DIR_RM/suspended.png
if [ -f "$TODAY_FILE" ]; then
        exit 0
fi
rm -f $DIR_RM/nyt.* || true
wget -O "$TODAY_FILE" "$URL"
cp "$TODAY_FILE" "$TODAY_FILE.new"
mv "$TODAY_FILE.new" "$PNG_SUSPEND"
cp "$TODAY_FILE" "$TODAY_FILE.new"
mv "$TODAY_FILE.new" "$PNG_SLEEPING"
