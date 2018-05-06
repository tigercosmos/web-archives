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

# Don't change, it's hard code here.
virtualenv warcm_env/virt1 --no-site-packages
source warcm_env/virt1/bin/activate

pip install -r WarcMiddleware/pip_requirements.txt
pip install git+https://github.com/ikreymer/pywb.git
```

## Usage

### For all sites

All sites list in `assets/alexa-*.csv`

```sh
# save
./scripts/getArchiveAll.py
# extract
./scripts/extracArchiveAll.py
```

### For one site

```sh
# get and save as warc
./scripts/getArchive.sh [Name] [URL]
# extract warc to files
./scripts/extracArchive.sh [Name]
```

## Third Party Tools Documents

- [pywb](https://pywb.readthedocs.io/en/latest/manual/usage.html)
- [WarcMiddleware](https://github.com/tigercosmos/WarcMiddleware/)

## Top Website Data

[Alexa Top 1,000,000](http://s3.amazonaws.com/alexa-static/top-1m.csv.zip) at 2018/3/20

## License

ISC
