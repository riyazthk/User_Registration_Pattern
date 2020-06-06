#! /bin/bash -x
shopt -s extglob
read fname
pat="^[A-Z][a-z]{3,}$"
if [[ $fname =~ $pat]]
then
echo "$fname"
else
echo "frst character start with caps and atleast 3 character"
fi

read lname
pat="^[A-Z][a-z]{3,}$"
if [[ $lname =~ $pat]]
then
echo "$lname"
else
echo "frst character start with caps and atleast 3 character"
fi

read phnum
pat="^91[ ][0-9]{10}$"
if [[ $phnum =~ $pat ]]
then
echo "$phnum"
else
echo "phone number have exact 10 digits and have space after country code"
fi

read email
pat="^[a-zA-z][a-zA-Z0-9\.\$\_\-]*[@][a-z]*[.][a-z]{2,5}[.]in|org$"
if [[ $email =~ $pat ]]
then
echo "$email"
else
echo "invalid email"
fi
