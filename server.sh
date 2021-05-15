#!/usr/bin/bash

printf "\n\n"
echo -e "\e[30;48;5;82mPLEASE WAIT SCRITI IS RUNNING........!It will take some time depending on the domains provided by you.\e[0m"
printf "\n\n"
echo -e "To see VERBOSE output please run the command as './server.sh -v'"
for urls in  $(cat $1);
        do echo -e "\e[38;5;47m $urls\e[0m"
                 curl -k $2 -s -I $urls | grep 'Server:\|X-Powered-By:'
done > server_output.txt
printf "\n\n"
echo -e "\e[30;48;5;82mDone...!!!\e[0m"
printf "\n\n"
echo -e "\e[30;48;5;82mServer and X-Powered-By Versions are as follows : - \e[0m"
printf "\n\n"
cat server_output.txt
printf "\n\n"

