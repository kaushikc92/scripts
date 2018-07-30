#!/bin/bash

cd ~
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
tar vxf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
cp wkhtmltox/bin/wk* /usr/local/bin/

apt-get update
apt-get install virtualenv
mkdir venv
virtualenv -p python3 venv
source venv/bin/activate

#git clone https://github.com/kaushikc92/MagickTable.git
cd MagickTable
pip install --trusted-host pypi.python.org -r requirements.txt
#mkdir media/documents
#mkdir media/tiles
chmod -R 777 /MagickTable/media

python manage.py makemigrations
python manage.py migrate

