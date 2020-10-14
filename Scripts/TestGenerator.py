from CodePrinter import CodePrinter

# Generate Swift file to EdgeCharacters+Generated.swift
class TestGenerator(object):
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
        self.__generate_fullwidth(printer)
        self.__generate_halfwidth(printer)
        self.__generate_wide(printer)
        self.__generate_narrow(printer)
        self.__generate_ambiguous(printer)
        self.__generate_neutral(printer)

    def __generate_fullwidth(self, printer):
        printer.write("let EastAsianFullwidthEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.fullWidth)

        printer.write("let EastAsianFullwidthEdgeUnicodeScalar: [UnicodeScalar] = EastAsianFullwidthEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_halfwidth(self, printer):
        printer.write("let EastAsianHalfwidthEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.halfWidth)

        printer.write("let EastAsianHalfwidthEdgeUnicodeScalar: [UnicodeScalar] = EastAsianHalfwidthEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_wide(self, printer):
        printer.write("let EastAsianWideEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.wide)

        printer.write("let EastAsianWideEdgeUnicodeScalar: [UnicodeScalar] = EastAsianWideEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_narrow(self, printer):
        printer.write("let EastAsianNarrowEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.narrow)

        printer.write("let EastAsianNarrowEdgeUnicodeScalar: [UnicodeScalar] = EastAsianNarrowEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_ambiguous(self, printer):
        printer.write("let EastAsianAmbiguousEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.ambiguous)

        printer.write("let EastAsianAmbiguousEdgeUnicodeScalar: [UnicodeScalar] = EastAsianAmbiguousEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_neutral(self, printer):
        printer.write("let EastAsianNeutralEdgeRawScalarValue: [UInt32] = [")
        self.__generate_base(printer, self.neutral)

        printer.write("let EastAsianNeutralEdgeUnicodeScalar: [UnicodeScalar] = EastAsianNeutralEdgeRawScalarValue.flatMap(UnicodeScalar.init)")
        printer.writeNewLine()

    def __generate_base(self, printer, unicode):
        unicode_arr = []

        start = end = "*"
        for code in unicode:
            values = code.split("..")

            if start == "*":
                start = end = hex(int(values[0], 16))
                continue

            # append start, end into unicode_arr
            if hex(int(end, 16)+1) != hex(int(values[0], 16)):
                # print current start, end
                if start == end:
                    unicode_arr.append(start)
                else:
                    unicode_arr.append(start)
                    unicode_arr.append(end)
                start = hex(int(values[0], 16))

            if len(values) == 1:
                end = hex(int(values[0], 16))
            elif len(values) == 2:
                end = hex(int(values[1], 16))
            else:
                raise Exception("Unicode Text should only contains 1 or 2 values. Please check the text.")

        if start == end:
            unicode_arr.append(start)
        else:
            unicode_arr.append(start)
            unicode_arr.append(end)

        printer.increaseIndent()
        printer.writeWithEnd(printer.tabStr, "")
        for code in unicode_arr:
            printer.writeWithEnd(code, ",")
        printer.decreaseIndent()
        printer.writeNewLine()
        printer.write("]")
        printer.writeNewLine()

    def __generateHeader(self, printer):
        # Generate Header
        printer.write("// ")
        printer.write("// EdgeCharacters+Generated.swift")
        printer.write("// He Wu")
        printer.write("// ")
        printer.write("// Copyright © {} He Wu. All rights reserved.".format(printer.curYear))
        printer.write("// ")
        printer.writeNewLine()

        # Add import
        printer.write("import Foundation")
        printer.writeNewLine()