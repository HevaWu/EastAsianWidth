import os

# Retrieve East Asian Width Contents from text file
class FileReader(object):
    def __init__(self, filePath):
        super().__init__()
        self.filePath = filePath

    def parseFile(self):
        print("Start Parsing EastAsianWidth.txt ... ")
        fullWidth = []
        halfWidth = []
        wide = []
        narrow = []
        ambiguous = []
        neutral = []

        unknown = []

        with open(self.filePath) as f:
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

        print("Parse EastAsianWidth.txt Finished ... ")
        return fullWidth, halfWidth, wide, narrow, ambiguous, neutral