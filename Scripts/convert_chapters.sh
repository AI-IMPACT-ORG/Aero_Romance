#!/bin/bash

# SPDX-License-Identifier: GPL-3.0-only

# Create output directory if it doesn't exist
mkdir -p Romance/Aero/Latex

# Process each chapter
for chapter in Romance/Aero/Chapters/chapter_*.md; do
    basename=$(basename "$chapter" .md)
    output_file="Romance/Aero/Latex/${basename}.tex"
    echo "Converting $chapter to $output_file"
    pandoc "$chapter" -f markdown -t latex -o "$output_file"
done 