#!/bin/sh python

# Download text from
# https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt

import sys
from FileReader import FileReader
from TestGenerator import TestGenerator

# input_path output_path
def main():
    input_path = sys.argv[1]

    filerReader = FileReader(input_path)

    try:
        fullWidth, halfWidth, wide, narrow, ambiguous, neutral = filerReader.parseFile()

        generator = TestGenerator(fullWidth, halfWidth, wide, narrow, ambiguous, neutral)
        generator.generate()
    except Exception as e:
        print("Read Text File Failed: ", e)

if __name__ == "__main__":
    main()
