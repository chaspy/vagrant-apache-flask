import sys
sys.path.insert(0, '/var/www/hello')
sys.path.insert(1, '/home/vagrant/.venv/lib/python3.6/site-packages')

from hello import app as application
