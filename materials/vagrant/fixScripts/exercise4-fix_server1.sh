#!/bin/bash
#add fix to exercise4-server1 here


configFile="Host server2
HostName 192.168.100.11
User vagrant
Port 22
"

echo "$configFile" >> /home/vagrant/.ssh/config
