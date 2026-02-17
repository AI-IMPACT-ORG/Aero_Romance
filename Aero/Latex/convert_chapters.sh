#!/bin/bash

# SPDX-License-Identifier: GPL-3.0-only

# Create chapters directory if it doesn't exist
mkdir -p chapters

# Convert each chapter
for i in {1..30}; do
    pandoc -f markdown -t latex --top-level-division=chapter "../Chapters/chapter_$i.md" -o "chapters/chapter_$i.tex"
done 