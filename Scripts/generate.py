#!/bin/sh python

# Download text from
# https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt

import sys
from FileReader import FileReader

# Generate Swift file to EastAsianWidth file
def generate(fullWidth, halfWidth, wide, narrow, ambiguous, neutral):
    print("Start Generating UnicodeScalar+Extension.swift ... ")



    print("Generate UnicodeScalar+Extension.swift Finished ... ")

# input_path output_path
def main():
    input_path = sys.argv[1]
    output_path = sys.argv[2]

    filerReader = FileReader(input_path)

    try:
        fullWidth, halfWidth, wide, narrow, ambiguous, neutral = filerReader.parseFile()
        generate(fullWidth, halfWidth, wide, narrow, ambiguous, neutral)
    except Exception as e:
        print("Read Text File Failed: ", e)

if __name__ == "__main__":
    main()
