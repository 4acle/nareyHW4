#!/bin/bash

# This script takes 2 command line arguments and performs subtraction and countdown.
# Usage: ./subtractMachine.sh <num1> <num2>
# Example: ./subtractMachine.sh 3 8

# Extract command line arguments
num1="$1"
num2="$2"

# Determine which number is larger
if [ "$num1" -gt "$num2" ]; then
  larger="$num1"
  smaller="$num2"
else
  larger="$num2"
  smaller="$num1"
fi

# 1. Subtract the smaller from the larger and print out the difference to stdout.
difference=$((larger - smaller))
echo "$larger is larger than $smaller"
echo "Difference = $difference"

# 2. Count down from the difference to 1 while printing each count to stdout.
echo "Count Down:"
for ((i = difference; i >= 1; i--)); do
  echo "Count Down = $i"
done

