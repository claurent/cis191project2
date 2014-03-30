#!/bin/bash
#scraper.sh URL
# extracts all email addresses and phone numbers and appends them to emails.txt and phonenumbers.txt respectively
# $1 is URL

#iterate through the arguments
for i in "$@"
do 
    case $i in
	"-f") echo "file, not website";;
	"-e") echo "emails";;
	"-p") echo "phonenumbers";;

	*) echo "none";;
    esac
done


wget -q -O temp $1

#emails
grep -Eo '[A-Za-z0-9][A-Za-z0-9!#$%&+=?_.]*@[A-Za-z0-9.-]*[.][A-Za-z0-9.-]*' temp >> emails.txt

# phone numbers
# XXX-XXX-XXXX OR (XXX) XXX-XXXX (with or without space)

grep -Eo '[0-9][0-9][0-9][-][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]|[(][0-9][0-9][0-9][)][ ]?[0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]' temp >> phonenumbers.txt

rm temp