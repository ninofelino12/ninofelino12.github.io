wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tar.xz
tar xfv Python-3.10.8.tar.xz       
git clone https://github.com/odoo/odoo.git 
export PATH=($PWD):$PATH
pip -r ./odoo/requirements.txt
