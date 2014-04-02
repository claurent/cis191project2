#!/bin/bash
#scraper.sh URL
# extracts all email addresses and phone numbers and appends them to emails.txt and phonenumbers.txt respectively
# $1 is URL

#iterate through the arguments
for i in "$@"
do 
    case $i in
	"-f") if [ i != $# ] 
	    
	    then
	    echo $i
	    grep -Eo '[A-Za-z0-9!#$%&][A-Za-z0-9!#$%&+=?_.]*@[A-Za-z0-9.-]*[.][A-Za-z0-9.-]{1,4}' ${!#} >> emails.txt
	    grep -Eo '[0-9]{3}[-][0-9]{3}[-][0-9]{4}|[(][0-9]{3}[)][ ]?[0-9]{3}[-][0-9]{3}' ${!#} >> phonenumbers.txt

	    fi	    
	    ;;
	"-e") echo "emails"
	    wget -q -O scraper_temp_html_file ${!#}
	    grep -Eo '[A-Za-z0-9!#$%&][A-Za-z0-9!#$%&+=?_.]*@[A-Za-z0-9.-]*[.][A-Za-z0-9.-]{1,4}' scraper_temp_html_file >> emails.txt
	    ;;
	"-p") 
	    wget -q -O scraper_temp_html_file ${!#}
	    grep -Eo '[0-9]{3}[-][0-9]{3}[-][0-9]{4}|[(][0-9]{3}[)][ ]?[0-9]{3}[-][0-9]{3}' scraper_temp_html_file >> phonenumbers.txt
	    ;;
	*) echo 
    esac
done




# phone numbers
# XXX-XXX-XXXX OR (XXX) XXX-XXXX (with or without space)


rm -f scraper_temp_html_file