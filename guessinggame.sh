#!/bin/bash

# Function to ask the user for a guess
ask_guess() {
    read -p "Guess the number of files in the current directory: " guess
}

# Get the actual number of files in the current directory
actual_files=$(ls -1A | wc -l)

# Loop to keep asking for the guess until it is correct
while [[ $guess -ne $actual_files ]]; do
    ask_guess
    if [[ $guess -lt $actual_files ]]; then
        echo "Too low. Try again!"
    elif [[ $guess -gt $actual_files ]]; then
        echo "Too high. Try again!"
    fi
done

# Congratulate the user for the correct guess
echo "Congratulations! You guessed the correct number of files: $actual_files"