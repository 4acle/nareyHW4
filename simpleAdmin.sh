#!/bin/bash

# This script takes 4 command line arguments and performs various directory and file operations.
# Usage: ./simpleAdmin.sh <dir1_name> <dir2_name> <file_name> <link_name>
# Example: ./simpleAdmin.sh mydir subdir myfile.txt mylink

# 1. Create a directory in the current working directory using the first argument as the name.
dir1_name="$1"
echo "Creating directory: $dir1_name"
mkdir "$dir1_name"

# 2. Create a directory inside the directory created in item 1 using the second argument as the name.
dir2_name="$2"
echo "Creating directory inside $dir1_name: $dir2_name"
mkdir "$dir1_name/$dir2_name"

# 3. Using redirection, create a text file using the third argument as the name, write “Hello World!” to it, and save it in the directory created in item 2.
file_name="$3"
echo "Creating text file: $file_name"
echo "Hello World!" > "$dir1_name/$dir2_name/$file_name"

# 4. Create a link from the working directory to the sub-directory created in item 2 and use the fourth argument as the name of the link.
link_name="$4"
echo "Creating link in the working directory to $dir1_name/$dir2_name: $link_name"
ln -s "$dir1_name/$dir2_name" "$link_name"
