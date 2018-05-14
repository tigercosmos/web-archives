#!/usr/bin/env bash
NAME=$1
URL=$2
if [ -z $2 ]:
then
    echo "Not correct argument supplied"
    echo "sh ./getArchive.sh NAME \"URL\""
else
    # enter virtual environment
    . "./warcm_env/virt1/bin/activate"
    # submodule WarcMiddleware
    cd WarcMiddleware
    python crawler.py --url $URL
    EPOCH=$(date +"%Y-%m-%d")
    FILENAME="$EPOCH.warc.gz"
    mv ./out.warc.gz $FILENAME
    cd ..
    if [ ! -d "collections/$NAME" ]; then
        wb-manager init $NAME
    fi
    # save in archive
    wb-manager add $NAME "./WarcMiddleware/$FILENAME"
    rm "./WarcMiddleware/$FILENAME"
fi