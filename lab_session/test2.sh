#!/bin/bash

##############################
#
# This is script 2
#
##############################

# Check if name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

# Make variable
name=$1

# Test the variable
echo "Hello! $name"

# Conditional Structure
if [[ "$name" =~ ^[sS]teve$ ]]; then
    echo "Hello! $name"
else
    echo "Your name is not Steve, your name is $name"
fi

