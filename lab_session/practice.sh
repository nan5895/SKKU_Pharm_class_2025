#!/bin/bash
#============================================================
# How to Use
# practice.sh <user_name> <mode> <mode_argument1> <mode_argument2>
# Mode:
# file_creation -> Create directory and file
# Option1: <dir_name> Option2: <file_name>
# flipping_coin -> simulation of coin flipping
# Option1: <file_name> Option2: <number_of_iterations>
#============================================================

# Display help message if --help is passed
if [[ "$1" == "--help" ]]; then
    echo "Usage: $0 <user_name> <mode> <mode_option1> <mode_option2>"
    echo ""
    echo "This practice script has 2 modes"
    echo ""
    echo "######################################"
    echo "Mode1: file_creation"
    echo "There should be two required arguments"
    echo "======================================"
    echo "mode_argument1: <dir_name>"
    echo "mode_argument2: <file_name>"
    echo ""
    echo "######################################"
    echo "Mode2: flipping_coin"
    echo "There should be two required arguments"
    echo "======================================"
    echo "mode_argument1: <file_name>"
    echo "mode_argument2: <number_of_iterations>"
    echo ""
    echo "Options:"
    echo "  --help   Show this help message and exit"
    exit 0
fi

#### Functions for this lab session ####
Wellcome_message() {
    echo "Hello $1, your operation started at $(date +"%Y-%m-%d %H:%M:%S")"
    echo ""
    echo ""
}

### Function to display progress ####
display_progress() {
    local display1=$1
    local display2=$2
    echo "$(date +"%H:%M:%S"): Hello, $display1, you are in $display2 mode"
    echo ""
    echo ""
}

#### Function to check if all necessary arguments exist ####
check_arguments() {
    local name=$1
    local mode=$2
    local ModeArgument1=$3
    local ModeArgument2=$4
    # Check if any of the arguments are missing or empty
    if [ -z "$name" ] || [ -z "$mode" ] || [ -z "$ModeArgument1" ] || [ -z "$ModeArgument2" ]; then
        echo "You are missing some arguments"
        echo "Usage: $0 <name> <mode> <ModeArgument1> <ModeArgument2>"
        exit 1
    fi
}

run_test1_script() {
    local dir_name=$1
    local file_name=$2
    # Make directory (folder) named using the provided directory name
    echo "Creating directory $dir_name in $PWD"
    mkdir "$dir_name"

    # Create numbers 1 to 100
    echo "Creating sequential number files to $dir_name"
    seq 1 1 100 > "$dir_name/numSeq.txt"

    echo "Here are the first 5 lines of your file:"
    head "$dir_name/numSeq.txt"
}

run_test3_script() {
    local file_name=$1
    local number_of_iterations=$2
    bash test3.sh "$file_name" "$number_of_iterations"
}

#===================================================
# Your process starts here
#===================================================

Name=$1
Mode=$2
ModeArgument1=$3
ModeArgument2=$4

# Display initial progress
echo "==================================="
echo " $(date +"%Y-%m-%d")   Lab Session  "
echo "==================================="

check_arguments "$Name" "$Mode" "$ModeArgument1" "$ModeArgument2"
Wellcome_message "$Name"

if [[ "$Mode" =~ ^[fF]ile_creation$ ]]; then

    display_progress "$Name" "$Mode"
    run_test1_script "$ModeArgument1" "$ModeArgument2"

elif [[ "$Mode" =~ ^[fF]lipping_coin$ ]]; then

    display_progress "$Name" "$Mode"
    run_test3_script "$ModeArgument1" "$ModeArgument2"

else

    echo "Error Not found your mode"

    echo "The mode: $Mode , is not in our list, please choose 'file_creation' or 'flipping_coin'"

    exit 1

fi
