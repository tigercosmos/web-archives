#!/bin/sh
NAME=$1
if [ ! -d "$DIRECTORY" ]; then
  mkdir data
fi
if [ -z $1 ]; then
    echo "./extractArchive.sh NAME"
else
    ./scripts/warc-extractor.py -dump content -path "collections/$NAME/archive/" -output_path "./data/$NAME"
    find ./data -name '*.gz' -exec gunzip '{}' \;
fi
