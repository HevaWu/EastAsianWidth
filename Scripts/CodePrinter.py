# Printer of Swift code
class CodePrinter(object):
    def __init__(self):
        super().__init__()
        self.__depth = 0
        self.__tabStr = "    "

    def write(self, str):
        print(self.__tabStr * self.__depth + str)

    def writeNewLine(self):
        print()

    def increaseIndent(self):
        self.__depth += 1

    def decreaseIndent(self):
        self.__depth = max(0, self.__depth - 1)
