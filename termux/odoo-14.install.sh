wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tar.xz
tar xfv Python-3.10.8.tar.xz       
git clone https://www.github.com/odoo/odoo --depth 1 --branch 14.0 --single-branch
export PATH="Python-3.10.8/bin":$PATH
cd odoo
pip install -r ./odoo/requirements.txt
sudo apt install python3-dev libpq-dev
pip3 install psycopg2
sudo apt-get install git build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y



