from CodePrinter import CodePrinter

# Generate Swift file to UnicodeScalar+Extension.swift
class SwiftGenerator(object):
    def __init__(self, fullWidth, halfWidth, wide, narrow, ambiguous, neutral):
        super().__init__()
        self.fullWidth = fullWidth
        self.halfWidth = halfWidth
        self.wide = wide
        self.narrow = narrow
        self.ambiguous = ambiguous
        self.neutral = neutral

    def generate(self):
        printer = CodePrinter()
        self.__generateHeader(printer)

        printer.write("public extension UnicodeScalar {")
        printer.increaseIndent()

        self.__generate_fullWidth(printer)
        self.__generate_halfWidth(printer)
        self.__generate_wide(printer)
        self.__generate_narrow(printer)
        self.__generate_ambiguous(printer)
        self.__generate_neutral(printer)

        printer.decreaseIndent()
        printer.write("}")

    def __generate_fullWidth(self, printer):
        printer.write("public var isEastAsianFullwidth: Bool {")
        self.__generate_base(printer, self.fullWidth)

    def __generate_halfWidth(self, printer):
        printer.write("public var isEastAsianHalfwidth: Bool {")
        self.__generate_base(printer, self.halfWidth)

    def __generate_wide(self, printer):
        printer.write("public var isEastAsianWide: Bool {")
        self.__generate_base(printer, self.wide)

    def __generate_narrow(self, printer):
        printer.write("public var isEastAsianNarrow: Bool {")
        self.__generate_base(printer, self.narrow)

    def __generate_ambiguous(self, printer):
        printer.write("public var isEastAsianAmbiguous: Bool {")
        self.__generate_base(printer, self.ambiguous)

    def __generate_neutral(self, printer):
        printer.write("public var isEastAsianNeutral: Bool {")
        self.__generate_base(printer, self.neutral)

    def __generate_base(self, printer, unicode):
        printer.increaseIndent()

        printer.write("switch self.value {")

        for code in unicode:
            values = code.split("..")
            if len(values) == 1:
                printer.write("case 0x{}: return true".format(values[0]))
            elif len(values) == 2:
                printer.write("case 0x{}...0x{}: return true".format(values[0], values[1]))
            else:
                raise Exception("Unicode Text should not have more than 2 pairs. Please check the code again.")

        printer.write("default: return false")
        printer.write("}")

        printer.decreaseIndent()
        printer.write("}")
        printer.writeNewLine()

    def __generateHeader(self, printer):
        # Generate Header
        printer.write("// ")
        printer.write("// UnicodeScalar+Extension.swift")
        printer.write("// He Wu")
        printer.write("// ")
        printer.write("// Copyright © 2020 He Wu. All rights reserved.")
        printer.write("// ")
        printer.writeNewLine()

        # Add import
        printer.write("import Foundation")
        printer.writeNewLine()
