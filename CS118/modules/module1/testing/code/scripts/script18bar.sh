#!/bin/bash
echo "Testing calling another script"
sh script18foo.sh
echo
echo "second test"
./script18foo.sh
echo
echo "third test"
sh ./script18foo.sh
