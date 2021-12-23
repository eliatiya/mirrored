#!/bin/bash
#add fix to exercise4-server2 here


configFile="Host server1
HostName 192.168.100.10
User vagrant
Port 22
"

echo "$configFile" >> /home/vagrant/.ssh/config
