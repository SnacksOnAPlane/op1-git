#!/bin/bash

rsync -arh --progress /media/smiley/54FF-1FEE/ device/
find . -name '*.aif' -print -exec zip '{}'.zip '{}' \; -exec rm '{}' \;
