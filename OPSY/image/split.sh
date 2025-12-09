#!/bin/bash

mkdir -p parts

for FILE in $(find . -type f -size +100M); do
    rm -f parts/$FILE.part*
    split -b 32M $FILE parts/$FILE.part && rm -f $FILE
done
