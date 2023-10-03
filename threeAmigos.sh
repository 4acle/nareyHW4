#!/bin/bash

# This script takes 4 command line arguments and performs summation and subtraction using another script.
# Usage: ./threeAmigos.sh <num1> <num2> <num3> <num4>
# Example: ./threeAmigos.sh 5 5 5 4

# Extract command line arguments
num1="$1"
num2="$2"
num3="$3"
num4="$4"

# 1. Sum the first three numbers.
sum=$((num1 + num2 + num3))
echo "Sum = $sum"

# 2. Execute subtractMachine.sh where the first argument is the sum from item 1,
# and the second argument is the fourth command line argument.
echo "Executing subtractMachine.sh with arguments: $sum $num4"
./subtractMachine.sh "$sum" "$num4"

