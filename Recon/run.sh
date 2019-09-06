#!/bin/sh
read -p "Enter The Site > " site 
curl https://crt.sh/?q=%25.$site -o $site.txt &>/dev/null 
echo "Downloading Page"
sleep 15
echo "Grabbing Subdomains"
sleep 3
bash -c "grep -o '[A-Za-z0-9.\_-]*\.*$site' $site.txt | sort -u"
