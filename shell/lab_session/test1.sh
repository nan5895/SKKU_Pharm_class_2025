#!/bin/bash

###################################
#
# This is script 1 
#
###################################

# make directory(folder) "Shell_exp"
mkdir Shell_exp

# make numbers 1 to 100
seq 1 1 100 > numSeq.txt
mv numSeq.txt Shell_exp

# print the file
cat ./Shell_exp/numSeq.txt


