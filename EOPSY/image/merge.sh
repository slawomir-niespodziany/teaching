#!/bin/bash

for FILE in $(ls parts | sed "s/^\(.*\)\.part[a-z]*$/\1/" | uniq); do
    cat parts/$FILE.part* > $FILE
    chmod +x $FILE
	rm -f parts/$FILE.part*
done 
