#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1rfXUjymr8MTQatzhE8WCtKwRiVWyVvjf" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1rfXUjymr8MTQatzhE8WCtKwRiVWyVvjf" -o tensorflow-1.13.1-cp35-cp35m-linux_armv7l.whl
echo Download finished.
