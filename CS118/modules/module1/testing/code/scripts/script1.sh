#!/bin/bash
# this is telling the terminal to run this script in bash (we are already in the bash environment, so this doesnt affect us)
# Author: Kristine Peters
# This script prints a greeting message 
# Hashtags are used to create comments
echo "Enter your name: "
# FuzzyName=Grizzly
class="CS118"
read YourName
echo "Hello $YourName and welcome to $class"
# echo $FuzzyName
# NOte that UNIX/LINUX are case sensitive
