#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
cd $home$user
sudo apt-get install git
sudo apt-get install conky-manager
sudo apt-get install postgresql -y
sudo su - postgres -c "createuser -s $USER" 2> /dev/null || true
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tar.xz
tar xfv Python-3.10.8.tar.xz  
export PATH="Python-3.10.8/bin":$PATH
sudo apt-get install git build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
git clone https://www.github.com/odoo/odoo --depth 1 --branch 14.0 --single-branch
export PATH="odoo/bin":$PATH
sudo apt-get install pip
cd odoo
pip install -r ./requirements.txt
sudo apt install python3-dev libpq-dev
pip install psycopg2
pip install PyPDF2
sudo apt-get install git build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
echo $PATH"odoo-bin" >> start.sh
./odoo-bin


