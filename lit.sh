#!/bin/sh
while [ true ]
do
	clear
	echo "    _____      _       _    _            _          ___   ___  __ ______" 
	echo "   |  __ \\    | |     | |  | |          | |        |__ \\ / _ \\/_ |____  |"
	echo "   | |__) |__ | |_   _| |__| | __ _  ___| | _____     ) | | | || |   / /"
	echo "   |  ___/ _ \\| | | | |  __  |/ _\` |/ __| |/ / __|   / /| | | || |  / /"
	echo "   | |  | (_) | | |_| | |  | | (_| | (__|   <\\__ \\  / /_| |_| || | / /"
	echo "   |_|   \\___/|_|\\__, |_|  |_|\\__,_|\\___|_|\\_\\___/ |____|\\___/ |_|/_/"
	echo "                  __/ |"
	echo "                 |___/"
	echo " "
	echo -n "  Enter your first name: "
	read firstName
	echo -n "  Enter your last name: "
	read lastName
	echo -n "  Enter your email address: "
	read email
	curl -s -X POST -F "entry.XXXXXXXXX=$firstName" -F "entry.XXXXXXXXX=$lastName" -F "entry.XXXXXXXXX=$email" -F "submit=Submit" https://docs.google.com/forms/x/x/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/formResponse > /dev/null
	echo "  Thank you for signing in, and enjoy the hackathon!"
	sleep 3
done
