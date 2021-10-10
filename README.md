# EastAsianWidth

Parse Unicode EastAsianWidth from unicode.org & Generate related Swift file

Unicode Version: 14.0
- https://www.unicode.org/versions/Unicode14.0.0/
- https://www.unicode.org/reports/tr11/tr11-39.html
- https://www.unicode.org/Public/14.0.0/ucd/EastAsianWidth.txt
- http://unicode.org/reports/tr11/

[![CI Status](https://img.shields.io/travis/HevaWu/UnicodeEastAsianWidth.svg?style=flat)](https://travis-ci.org/HevaWu/UnicodeEastAsianWidth)
[![Version](https://img.shields.io/cocoapods/v/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)
[![License](https://img.shields.io/cocoapods/l/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)
[![Platform](https://img.shields.io/cocoapods/p/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)

## Definition

> East_Asian_Width: In the context of interoperating with East Asian legacy character encodings and implementing East Asian typography, East_Asian_Width is a categorization of character. It can take on two abstract values, narrow and wide.
>
> In legacy implementations, there is often a corresponding difference in encoding length (one or two bytes) as well as a difference in displayed width. However, the actual display width of a glyph is given by the font and may be further adjusted by layout. An important class of fixed-width legacy fonts contains glyphs of just two widths, with the wider glyphs twice as wide as the narrower glyphs.
>
> **Note**: For convenience, the classification further distinguishes between explicitly and implicitly wide and narrow characters.

According to Unicode guide, [East Asian Width](http://unicode.org/reports/tr11/) contains 6 types:

> - **East Asian Fullwidth (F)**: All characters that are defined as Fullwidth in the Unicode Standard [Unicode] by having a compatibility decomposition of type <wide> to characters elsewhere in the Unicode Standard that are implicitly narrow but unmarked.
> - **East Asian Halfwidth (H)**: All characters that are explicitly defined as Halfwidth in the Unicode Standard by having a compatibility decomposition of type <narrow> to characters elsewhere in the Unicode Standard that are implicitly wide but unmarked, plus U+20A9 ₩ WON SIGN.
> - **East Asian Wide (W)**: All other characters that are always wide. These characters occur only in the context of East Asian typography where they are wide characters (such as the Unified Han Ideographs or Squared Katakana Symbols). This category includes characters that have explicit halfwidth counterparts, along with characters that have the [UTS51] property Emoji_Presentation, with the exception of characters that have the [UCD] property Regional_Indicator
> - **East Asian Narrow (Na)**: All other characters that are always narrow and have explicit fullwidth or wide counterparts. These characters are implicitly narrow in East Asian typography and legacy character sets because they have explicit fullwidth or wide counterparts. All of ASCII is an example of East Asian Narrow characters.
> - **East Asian Ambiguous (A)**: All characters that can be sometimes wide and sometimes narrow. Ambiguous characters require additional information not contained in the character code to further resolve their width.
> - **Neutral (Not East Asian)**: All other characters. Neutral characters do not occur in legacy East Asian character sets. By extension, they also do not occur in East Asian typography. For example, there is no traditional Japanese way of typesetting Devanagari. Canonical equivalents of narrow and neutral characters may not themselves be narrow or neutral respectively. For example, U+00C5 Å LATIN CAPITAL LETTER A WITH RING ABOVE is Neutral, but its decomposition starts with a Narrow character.

All we want to handle at here is the `fullwidth` & `halfwidth`, where the definition of them are(When mapping Unicode to East Asian legacy character):

> - Wide Unicode characters `always` map to `fullwidth` characters.
> - Narrow (and neutral) Unicode characters `always` map to `halfwidth` characters.
> - Halfwidth Unicode characters `always` map to `halfwidth` characters.
> - Ambiguous Unicode characters `always` map to `fullwidth` characters.

## How to use

```swift
// MARK: String - contains F,H,W,Na,A,N characters checking
var str = "abc"
print(str.containsEastAsianAmbiguousCharacters)

// MARK: String.UnicodeScalarView - check fullwidth/halfwidth count
str.unicodeScalars.countByEastAsianWidth()

// MARK: UnicodeScalar - check which EastAsianWidth type of this character
str.unicodeScalars.forEach { scalar in
    if scalar.isEastAsianHalfWidth {
        print("\(scalar) is half width character.")
    }
}
```

You could check more function details in the `Sources/EastAsianWidth` folder.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

UnicodeEastAsianWidth is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UnicodeEastAsianWidth'
```

## Code Structure:

```s
--- Sources/EastAsianWidth
 |                    |
 |                     -- String+Extension.swift
 |                     -- UnicodeScarlar+Generated.swift
 |                     -- UnicodeScarlar+Recommendations.swift
 |                     -- UnicodeScarlarView+Extension.swift
 |
 |- Tests/EastAsianWidthTests
 |                    |
 |                     -- CountByEastAsianWidthTests.swift
 |                     -- EastAsianAmbiguousTests.swift
 |                     -- EastAsianFullwidthTests.swift
 |                     -- EastAsianHalfwidthTests.swift
 |                     -- EastAsianNarrowTests.swift
 |                     -- EastAsianNeutralTests.swift
 |                     -- EastAsianWideTests.swift
 |                     -- EdgeCharacters+Generated.swift
 |                     -- FullwidthTests.swift
 |                     -- HalfwidthTests.swift
 |                     -- TestUtils.swift
 |                     -- XCTestManifests.swift
 |
  - Scripts
 |     |
 |      -- EastAsianWidth.txt
 |      -- FileReader.py
 |      -- CodePrinter.py
 |      -- SwiftGenerator.py
 |      -- generate.py
 |      -- run.sh
```

## What is Scripts

We could directly run `./Scripts/run.sh` which will generate the `UnicodeScarlar+Generated.swift` to the Swift package automatically.

## Author

He Wu(HevaWu) hewu9375@gmail.com

## License

UnicodeEastAsianWidth is available under the MIT license. See the LICENSE file for more info.