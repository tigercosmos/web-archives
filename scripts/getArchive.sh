#!/bin/sh
NAME=$1
URL=$2
if [ -z $2 ]:
then
    echo "Not correct argument supplied"
    echo "sh ./getArchive.sh NAME URL"
else
    cd WarcMiddleware
    python crawler.py --url $URL
    EPOCH=$(date +%s)
    FILENAME="$EPOCH.warc.gz"
    mv ./out.warc.gz $FILENAME
    cd ..
    if [ ! -d "collections/$NAME" ]; then
        wb-manager init $NAME
    fi
    wb-manager add $NAME "./WarcMiddleware/$FILENAME"
    rm "./WarcMiddleware/$FILENAME"
fi