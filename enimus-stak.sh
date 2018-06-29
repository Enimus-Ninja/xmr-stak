#!/bin/bash -ex
#
echo "ENIMUS-MINER"
echo sleep 0.2 "   _   _    _______  _       _________ _______           _______         _______  _______            _   _     "
echo sleep 0.3 "  ( ) ( )  (  ____ \( (    /|\__   __/(       )|\     /|(  ____ \       (  ____ \(  ___  )|\     /| ( ) ( )    "
echo sleep 0.4 " _| |_| |_ | (    \/|  \  ( |   ) (   | () () || )   ( || (    \/       | (    \/| (   ) |( \   / )_| |_| |_   "
echo sleep 0.5 "(_   _   _)| (__    |   \ | |   | |   | || || || |   | || (_____  _____ | (_____ | (___) | \ (_) /(_   _   _)  "
echo sleep 0.6 " _| (_) |_ |  __)   | (\ \) |   | |   | |(_)| || |   | |(_____  )(_____)(_____  )|  ___  |  \   /  _| (_) |_   "
echo sleep 0.7 "(_   _   _)| (      | | \   |   | |   | |   | || |   | |      ) |             ) || (   ) |   ) (  (_   _   _)  "
echo sleep 0.8 "  | | | |  | (____/\| )  \  |___) (___| )   ( || (___) |/\____) |       /\____) || )   ( |   | |    | | | |    "
echo sleep 0.9 "  (_) (_)  (_______/|/    )_)\_______/|/     \|(_______)\_______)       \_______)|/     \|   \_/    (_) (_)    "
echo sleep 1.0 "                                                                                                               "
echo sleep 1.2 "                   _______ _________ _____                                                                     "
echo sleep 1.3 "|\     /||\     /|(  ___  )\__   __// ___ \                                                                    "
echo sleep 1.4 "| )   ( || )   ( || (   ) |   ) (  ( (   ) )                                                                   "
echo sleep 1.5 "| | _ | || (___) || (___) |   | |   \/  / /                                                                    "
echo sleep 1.6 "| |( )| ||  ___  ||  ___  |   | |      ( (                                                                     "
echo sleep 1.7 "| || || || (   ) || (   ) |   | |      | |                                                                     "
echo sleep 1.8 "| () () || )   ( || )   ( |   | |      (_)                                                                     "
echo sleep 1.9 "(_______)|/     \||/     \|   )_(       _                                                                      "
echo sleep 2.0 "                                       (_)                                                                     "
echo sleep 2.1 "                        _______           _______                                                              "
echo sleep 2.2 "                       (  ___  )|\     /|(  ____ \                                                             "
echo sleep 2.3 "                       | (   ) || )   ( || (    \/                                                             "
echo sleep 2.4 "                 _____ | (___) || | _ | || (_____  _____                                                       "
echo sleep 2.5 "               (_____)|  ___  || |( )| |(_____  )(_____)                                                      "
echo sleep 2.6 "                       | (   ) || || || |      ) |                                                             "
echo sleep 2.7 "                       | )   ( || () () |/\____) |                                                             "
echo sleep 2.8 "                       |/     \|(_______)\_______)                                                             "
echo sleep 2.9 "                                                                                                               "
echo sleep 4.0 "   _   _        _______           _______  _                    _______           _                            "
echo sleep 4.1 "  ( ) ( )      (  ____ \|\     /|(  ____ \| \    /\   |\     /|(  ___  )|\     /|( )                           "
echo sleep 4.2 " _| |_| |_     | (    \/| )   ( || (    \/|  \  / /   ( \   / )| (   ) || )   ( || |                           "
echo sleep 4.3 "(_   _   _)    | (__    | |   | || |      |  (_/ /_____\ (_) / | |   | || |   | || |                           "
echo sleep 4.4 " _| (_) |_     |  __)   | |   | || |      |   _ ((_____)\   /  | |   | || |   | || |                           "
echo sleep 4.5 "(_   _   _)    | (      | |   | || |      |  ( \ \       ) (   | |   | || |   | |(_)                           "
echo sleep 4.6 "  | | | |      | )      | (___) || (____/\|  /  \ \      | |   | (___) || (___) | _                            "
echo sleep 4.7 "  (_) (_)      |/       (_______)(_______/|_/    \/      \_/   (_______)(_______)(_)                           "
echo sleep 4.8 "                                                                                                               "
echo sleep 4.9 "                                                                                                               "
echo sleep 5.0 "ENDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"                                                                                                                                                                                                                                                                                                
 
apt-get --assume-yes update 
apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano dos2unix sshpass 
cd /home/ubuntu 
echo sleep 15 "НЕБОРЕ ШОО МАЙНИТИ ХОЧЕШ АЙНО???" 
  
git clone https://github.com/Enimus/xmr-stak.git 
 
cd /home/ubuntu/xmr-stak 
 
cmake -DCUDA_ENABLE=OFF -DHWLOC_ENABLE=OFF -DOpenCL_ENABLE=OFF 
 
make install 
 
cd /home/ubuntu/xmr-stak/bin/ 
 
chmod +x xmr-stak 
 
chown -R ubuntu:ubuntu /home/ubuntu/* 
 
sysctl -w vm.nr_hugepages=128 
 
sudo rm -r /etc/rc.local
 
cp /home/ubuntu/xmr-stak/rc.local /etc/rc.local 
 
sudo sh /etc/rc.local 
 
systemctl daemon-reload 
 
systemctl enable enimus-stak.service 
 
systemctl start enimus-stak.service 
 
systemctl stop enimus-stak.service 
 
systemctl restart enimus-stak.service 
  


