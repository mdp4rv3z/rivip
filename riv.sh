#!/bin/bash
echo "
   ▄████████  ▄█   ▄█    █▄   ▄█     ▄███████▄ 
  ███    ███ ███  ███    ███ ███    ███    ███ 
  ███    ███ ███▌ ███    ███ ███▌   ███    ███ 
 ▄███▄▄▄▄██▀ ███▌ ███    ███ ███▌   ███    ███ 
▀▀███▀▀▀▀▀   ███▌ ███    ███ ███▌ ▀█████████▀  
▀███████████ ███  ███    ███ ███    ███        
  ███    ███ ███  ███    ███ ███    ███        
  ███    ███ █▀    ▀██████▀  █▀    ▄████▀      
  ███    ███                                   
			
			--coded by mdp4rv3z

  [Greetz:BD_inj3c70r;C0de-X-hunt3r;M@gnific0]


"
echo
echo -n -e  "\e[31mEnter Domain name Or iP :\e[0m"
read ip 
echo 
echo  -n -e "\e[31mEnter proxy ( example:protocol://host:port ):\e[0m"
read proxy
if [[ -z "$proxy" ]];then
curl -# http://domains.yougetsignal.com/domains.php -d remoteAddress=$ip > riv.txt
else
curl -x $proxy	-# http://domains.yougetsignal.com/domains.php -d remoteAddress=$ip > riv.txt
fi
echo -----------------------
echo -e "\e[36m Target server Ip: \e[0m"
cat riv.txt | jq .remoteIpAddress
echo -----------------------
echo 
echo -----------------------
echo -e "\e[36m Total Domains: \e[0m"
cat riv.txt | jq .domainCount
echo -----------------------
echo -e "\e[92m" 
cat riv.txt | jq .domainArray | awk '/",/ {print}'
echo
rm  -i riv.txt;


