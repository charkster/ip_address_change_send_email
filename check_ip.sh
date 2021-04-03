#!/bin/bash

gotip=$(curl ipinfo.io/ip)
compare=$(cat workingip.txt)
regex='^[0-9]+'

if [[("$compare" != "$gotip") && ($gotip =~ $regex)]]
    then 
    EMAIL1="your_email@gmail.com"
#    EMAIL2="another_email@gmail.com"
    EMAILMESSAGE="tmp_email_message.txt"
    cp email_message.txt $EMAILMESSAGE
    echo "ip address is now $gotip" >> $EMAILMESSAGE
    /usr/bin/msmtp "$EMAIL1" < $EMAILMESSAGE
#    /usr/bin/msmtp "$EMAIL2" < $EMAILMESSAGE
#    rm $EMAILMESSAGE
    echo $gotip > workingip.txt

else
echo "done"
fi
