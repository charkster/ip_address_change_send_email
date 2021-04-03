# ip_address_change_send_email
A script to run on crontab which will email you if your ip address changes. I used to use dynamic DNS, but did not want to pay for it anymore. The "check_ip.sh" script needs msmtp to be installed. I have included a sample file for use with a gmail account.

This can be setup on a raspberry pi with internet access. I set it up using the root user. All the files except "msmtprc" reside in the /root directory

"crontab.txt" is the example crontab entry that calls the "check_ip.sh" script. This file is not needed after crontab entry has been created.

"email_message.txt" is the email template that "check_ip.sh" will append the new ip address to when it creates a temporary email message to send.

"workingip.txt" is a file that contains the latest ip address, which "check_ip.sh" compares against.

"msmtprc" is a sample configuration file used by msmtp to send the email using a gmail account. It is located in /etc

