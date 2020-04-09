#!/bin/sh

SCRIPT_DIR=$(dirname "$0")
PROJECT_ROOT="$SCRIPT_DIR/.."
INPUT_FILE="$SCRIPT_DIR/EastAsianWidth.txt"
OUTPUT_DIR="$PROJECT_ROOT/EastAsianWidth/Sources/EastAsianWidth/Generated"

echo "Start Generating East Asian Width Unicode Swift File..."
python3 "$SCRIPT_DIR/generate.py" $INPUT_FILE $OUTPUT_DIR

echo "Done..."
