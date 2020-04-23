# cleans the entries with no ip addresses in the line, cats lines with "ipv4|ipv6" moves them to temp and moves it back to the original file

cat /home/username/logs/filename | grep -E "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|\b([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}\b" > temp && mv temp /home/username/logs/filename 

# cleans entries made by web crawlers e.t.c 

grep -v "http\|flare\|Flare\|bot\|perl\|python\|cloud\|Cloud\|face\|Face\|google" /home/username/logs/filename > temp && mv temp /home/username/logs/filename

sudo chown www-data:www-data /home/username/logs/*
sudo chmod 0664 /home/username/logs/*
