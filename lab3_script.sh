#!/bin/bash
# Authors : Jeffrey Rael
# Date: 2/5/2020

#Problem 1&2 Code:
echo "Input a file name: "
read file
echo "Input a regular expression: "
read exp
grep $exp $file
#stored the file to be read and the expression to be filtered into file and exp variables
#then used grep with given variables to enact the filtering 

#Problem 3 Code:
grep -c ^[0-9][0-9][0-9][\-+] $file

#using the output given from running problem 1 with varrying expressions, there was no need in this case
#to filter past the first three digits and first hyphen, given more troubling data would likely just repeat the current format
#so that the filter is stricter
#also tried using [0-9]{3} to shorten code but could not successfully implement 

#Problem 4 Code:
grep -c [\.+]  $file

#using problem 1 code again only emails appeared with "." in them, so loose filtering was applied due to 
#lack of need for stricter filtering, in the case more difficult data was to be filtered, would have to account for
#the possibility of more than one "." present as well as possibly preceeding the "." assigned to .edu/.com/etc...
#also any array of valid characters preceeding the final "."; numbers/special characters/etc

grep -o ^[3][0][3][\-+][0-9][0-9][0-9][\-+][0-9][0-9][0-9][0-9] $file

#force string evaluation at the start to ensure number starts with 303 then just follow filter pattern as in problem 1 

grep [g][e][o][c][i][t][i][e][s] $file >> email_results.txt

#make sure desired email domain is the filter then send to file

#Make sure to document how you are solving each problem!
