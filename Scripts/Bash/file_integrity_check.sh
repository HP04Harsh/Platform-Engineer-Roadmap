#!/bin/bash

FILE="/etc/passwd"
HASH_FILE="passwd.hash"

if [ ! -f $HASH_FILE ]; then
    sha256sum $FILE > $HASH_FILE
    echo "Baseline hash created."
else
    sha256sum -c $HASH_FILE
fi