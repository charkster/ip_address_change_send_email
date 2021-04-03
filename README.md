# ip_address_change_send_email
A script to run on crontab which will email you if your ip address changes. I used to use dynamic DNS, but did not want to pay for it anymore.

This can be setup on a raspberry pi with internet access. I set it up using the root user.

"crontab.txt" is the crontab entry that calls the "check_ip.sh" script.

"email_message.txt" is the email template that "check_ip.sh" will append the new ip address to when it creates a temporary email message to send.

"workingip.txt" is a file that contains the latest ip address, which "check_ip.sh" compares against.

"msmtprc" is a sample configuration file used by msmtp to send the email using a gmail account. It is located in /etc

