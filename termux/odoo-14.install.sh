wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tar.xz
tar xfv Python-3.10.8.tar.xz       
git clone https://www.github.com/odoo/odoo --depth 1 --branch 14.0 --single-branch
export PATH="Python-3.10.8/bin":$PATH
cd odoo
pip -r ./odoo/requirements.txt

