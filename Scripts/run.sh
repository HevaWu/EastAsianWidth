#!/bin/sh

# Current Unicode Version: 13.0.0
# https://www.unicode.org/versions/Unicode13.0.0/ch18.pdf
# https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt
# http://unicode.org/reports/tr11/

SCRIPT_DIR=$(dirname "$0")
PROJECT_ROOT="$SCRIPT_DIR/.."
INPUT_FILE="$SCRIPT_DIR/EastAsianWidth.txt"
OUTPUT_FILE="$PROJECT_ROOT/EastAsianWidth/Sources/EastAsianWidth/UnicodeScalar+Extension.swift"

echo "Start Generating East Asian Width Unicode Swift File..."
python3 "$SCRIPT_DIR/generate.py" $INPUT_FILE > $OUTPUT_FILE

echo "Done..."
