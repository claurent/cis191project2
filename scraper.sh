#!/bin/bash
#scraper.sh URL
# extracts all email addresses and phone numbers and appends them to emails.txt and phonenumbers.txt respectively
# $1 is URL

wget -q -O temp $1


grep -o '*@*' temp

rm temp