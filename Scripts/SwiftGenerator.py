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
        self.generateHeader(printer)

        printer.write("public extension UnicodeScalar {")
        printer.writeNewLine()

        printer.increaseIndent()
        printer.write("// MARK: -")
        printer.writeNewLine()

        self.generateFullWidth(printer)

        printer.decreaseIndent()
        printer.write("}")

    def generateFullWidth(self, printer):
        printer.write("public var isEastAsianFullwidth: Bool {")
        self.generateBase(printer, self.fullWidth)

    def generateBase(self, printer, unicode):
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

    def generateHeader(self, printer):
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
