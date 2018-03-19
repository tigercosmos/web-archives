# WEB ARCHIVES

Web Archives Collection System 

## Setup

Ubuntu Version > 16.04: 

```sh
# Get source
git clone https://github.com/tigercosmos/web-archives.git
cd web-archives
git submodule init
git submodule update

# Dependencies
sudo apt-get install libxml2-dev libxslt-dev proxychains

virtualenv warcm_env/virt1 --no-site-packages
source warcm_env/virt1/bin/activate

pip install -r WarcMiddleware/pip_requirements.txt
pip install git+https://github.com/ikreymer/pywb.git
```

## Third Party Tools Documents
- [pywb](https://pywb.readthedocs.io/en/latest/manual/usage.html)
- [WarcMiddleware](https://github.com/tigercosmos/WarcMiddleware/)

## License
ISC
