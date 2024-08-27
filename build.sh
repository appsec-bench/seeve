#!/bin/bash

# Iterate through each directory in the current path
for dir in */; do
    if [ -d "$dir" ]; then
        echo "Entering directory: $dir"
        
        # Change to the directory
        cd "$dir"
        
        # Check if 'src' directory exists
        if [ -d "src" ]; then
            echo "Entering src directory"
            cd src
            
            # Run make
            echo "Running make in $(pwd)"
            make
            
            # Return to the parent directory
            cd ../..
        else
            echo "No 'src' directory found in $dir"
            cd ..
        fi
    fi
done
