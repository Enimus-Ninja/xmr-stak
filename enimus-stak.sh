#!/bin/sh -ex
#LOLOLOLOLOLOLOLOOOOLOLOLOLOLOL
print ('''     "ENIMUS-MINER"
echo sleep 2 "   _   _    _______  _       _________ _______           _______         _______  _______            _   _     "
echo sleep 3 "  ( ) ( )  (  ____ \( (    /|\__   __/(       )|\     /|(  ____ \       (  ____ \(  ___  )|\     /| ( ) ( )    "
echo sleep 4 " _| |_| |_ | (    \/|  \  ( |   ) (   | () () || )   ( || (    \/       | (    \/| (   ) |( \   / )_| |_| |_   "
echo sleep 5 "(_   _   _)| (__    |   \ | |   | |   | || || || |   | || (_____  _____ | (_____ | (___) | \ (_) /(_   _   _)  "
echo sleep 6 " _| (_) |_ |  __)   | (\ \) |   | |   | |(_)| || |   | |(_____  )(_____)(_____  )|  ___  |  \   /  _| (_) |_   "
echo sleep 7 "(_   _   _)| (      | | \   |   | |   | |   | || |   | |      ) |             ) || (   ) |   ) (  (_   _   _)  "
echo sleep 8 "  | | | |  | (____/\| )  \  |___) (___| )   ( || (___) |/\____) |       /\____) || )   ( |   | |    | | | |    "
echo sleep 9 "  (_) (_)  (_______/|/    )_)\_______/|/     \|(_______)\_______)       \_______)|/     \|   \_/    (_) (_)    "

echo sleep 1m "

echo sleep 1 "  ( ) ( )      (  ____ \|\     /|(  ____ \| \    /\   |\     /|(  ___  )|\     /|( )                           "
echo sleep 2 " _| |_| |_     | (    \/| )   ( || (    \/|  \  / /   ( \   / )| (   ) || )   ( || |                           "
echo sleep 3 "(_   _   _)    | (__    | |   | || |      |  (_/ /_____\ (_) / | |   | || |   | || |                           "
echo sleep 4 " _| (_) |_     |  __)   | |   | || |      |   _ ((_____)\   /  | |   | || |   | || |                           "
echo sleep 5 "(_   _   _)    | (      | |   | || |      |  ( \ \       ) (   | |   | || |   | |(_)                           "
echo sleep 6 "  | | | |      | )      | (___) || (____/\|  /  \ \      | |   | (___) || (___) | _                            "
echo sleep 7 "  (_) (_)      |/       (_______)(_______/|_/    \/      \_/   (_______)(_______)(_)                           "
echo sleep 8 "                                                                                                               "
'''} 
 
apt-get --assume-yes update
apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano dos2unix sshpass 
cd /home/ubuntu
echo sleep 8.5 "НЕБОРЕ ШОО МАЙНИТИ ХОЧЕШ АЙНО???"
git clone https://github.com/Enimus/xmr-stak.git
cd /home/ubuntu/xmr-stak
cmake -DCUDA_ENABLE=OFF -DHWLOC_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd /home/ubuntu/xmr-stak/bin/
chmod +x xmr-stak
chown -R ubuntu:ubuntu /home/ubuntu/*
sysctl -w vm.nr_hugepages=128
echo -e "vm.nr_hugepages=128" | tee -a /etc/sysctl.conf
cat > /lib/systemd/system/masaruk-neborak.service  << EOF
[Unit]
Description=masaruk-neborak
After=network.target
[Service]
ExecStart=/home/ubuntu/xmr-stak/bin/xmr-stak -c /home/ubuntu/xmr-stak/bin/config.txt --url "pool.masaricoin.com:5555" --user "5mAPFHRdT8u5vLNhi8vnjNVGXsSwL5bBwS7ZeH53WcsoLXC7C1bzYu8BaJUycwyrxEVXiEvsmkLrYfkaTXW1czmiM9WM8j9" --pass "Enimus:enimus@enimus.com" --currency "masari"
User=root
[Install]
WantedBy=multi-user.target
EOF  
systemctl daemon-reload
systemctl enable enimus-stak.service
systemctl start enimus-stak.service
systemctl stop enimus-stak.service 
systemctl restart enimus-stak.service
 




