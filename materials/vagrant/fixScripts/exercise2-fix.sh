#!/bin/bash
#add fix to exercise2 here
sudo sed -e '/www.ascii-art.de/s/^/#/g' -i /etc/hosts
