#!/bin/bash
#Sets the CPU frequency to 600 MHZ, displays CPU information,
#Displays home directory, displays the number of items in the current working directory
#Example invocation: debian@beaglebone.~/hw4$ ./mySetup.sh


sudo cpufreq-set -f 600MHz

cpufreq-info

location="/home/debian"

echo "Location: $location"

items=$(ls | wc -l)
echo "Number of items in the current directory: $items"
