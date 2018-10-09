#!/bin/bash

rsync -arh --progress /media/smiley/54FF-1FEE/ device/
find . -name '*.aif' -print -exec touch -a -m -t 201512180130.09 '{}' \;
find device/album -name '*.aif' -print -exec zip '{}'.zip '{}' \; -exec rm '{}' \;
find device/tape -name '*.aif' -print -exec zip '{}'.zip '{}' \; -exec rm '{}' \;
