#!/bin/bash

# Check if directories are provided
if [ "$#" -eq 0 ]; then
    echo "Usage: ./show_tree.sh [dir1] [dir2] ... [dirN]"
    exit 1
fi

# Loop through provided directories
for dir in "$@"; do
    if [ -d "$dir" ]; then
        echo "========================================="
        echo "Directory: [$dir]"
        echo "-----------------------------------------"
        echo "Top 5 items:"
        tree "$dir" | head -n 5
        echo "..."
        echo "Bottom 5 items:"
        tree "$dir" | tail -n 5
        echo "-----------------------------------------"
        total=$(tree "$dir" | tail -n 1)
        echo "Total items in [$dir]: $total"
        echo "========================================="
        echo ""
    else
        echo "Directory [$dir] does not exist!"
    fi
done

