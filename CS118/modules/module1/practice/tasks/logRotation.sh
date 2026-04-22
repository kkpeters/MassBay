#!/bin/bash

# files=$(find $PWD -mtime 0 | grep *.log)
find $PWD -mtime 0 | grep *.log
# echo $files
# tar -cvf archive.tar $files
