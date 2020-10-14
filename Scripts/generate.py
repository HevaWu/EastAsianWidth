#!/bin/sh python

# Download text from
# https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt

import sys
from FileReader import FileReader
from SwiftGenerator import SwiftGenerator
from TestGenerator import TestGenerator

# input_path output_path
def main():
    try:
        input_path = sys.argv[1]
        generatorType = sys.argv[2]
    except:
        print("// Please input correct command. \n// You should input the command like: python3 generate.py $INPUT_FILE \"source\"")
        return

    filerReader = FileReader(input_path)

    try:
        fullWidth, halfWidth, wide, narrow, ambiguous, neutral = filerReader.parseFile()

        if generatorType == "source":
            generator = SwiftGenerator(fullWidth, halfWidth, wide, narrow, ambiguous, neutral)
        elif generatorType == "test":
            generator = TestGenerator(fullWidth, halfWidth, wide, narrow, ambiguous, neutral)
        else:
            raise Exception("Please append correct generatorType(source OR test) after INPUT_FILE.")

        generator.generate()
    except Exception as e:
        print("Read Text File Failed: ", e)
        return

if __name__ == "__main__":
    main()
