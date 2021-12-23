#!/bin/bash
#add fix to exercise3 here
sudo sed -e 's/denied/granted/' -i /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2.service
