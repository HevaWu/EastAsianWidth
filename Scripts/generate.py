#!/bin/sh python

# Download text from
# https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt

import os
import sys

# Retrieve East Asian Width Contents from text file
def read(filePath):
    print("Start Reading EastAsianWidth.txt ... ")
    fullWidth = []
    halfWidth = []
    wide = []
    narrow = []
    ambiguous = []
    neutral = []

    unknown = []

    with open(filePath) as f:
        for line in f:
            # Each line are in this format:
            # unicode_key ; unicode_mark # description
            if line.startswith("#"): continue

            fields = line.split(";")
            if len(fields) < 2: continue
            unicode_key = fields[0]

            values = fields[1].split("#")
            if len(values) < 2: continue
            unicode_mark = values[0].strip()

            # switch unicode_mark and category the unicodes
            if unicode_mark == 'F':
                fullWidth.append(unicode_key)
            elif unicode_mark == "H":
                halfWidth.append(unicode_key)
            elif unicode_mark == "W":
                wide.append(unicode_key)
            elif unicode_mark == "Na":
                narrow.append(unicode_key)
            elif unicode_mark == "A":
                ambiguous.append(unicode_key)
            elif unicode_mark == "N":
                neutral.append(unicode_key)
            else:
                unknown.append(unicode_key)

    if len(unknown) > 0:
        raise Exception("Text File should not have unknown mark. Please check EastAsianWidth.txt again.")

    print("Read EastAsianWidth.txt Finished ... ")
    return fullWidth, halfWidth, wide, narrow, ambiguous, neutral

# Generate Swift file to EastAsianWidth file
# def generate():

# input_path output_path
def main():
    input_path = sys.argv[1]
    output_path = sys.argv[2]

    try:
        fullWidth, halfWidth, wide, narrow, ambiguous, neutral = read(input_path)

    except Exception as e:
        print("Read Text File Failed: ", e)

if __name__ == "__main__":
    main()
