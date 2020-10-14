import datetime

# Printer of Swift code
class CodePrinter(object):
    curYear = datetime.datetime.now().year
    tabStr = "    "
    
    def __init__(self):
        super().__init__()
        self.__depth = 0

    def write(self, str):
        print(self.tabStr * self.__depth + str)

    def writeWithEnd(self, str, end):
        print(str, end=end)

    def writeNewLine(self):
        print()

    def increaseIndent(self):
        self.__depth += 1

    def decreaseIndent(self):
        self.__depth = max(0, self.__depth - 1)
