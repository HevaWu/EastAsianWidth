# EastAsianWidth

Parse Unicode EastAsianWidth from unicode.org & Generate related Swift file

Unicode Version: 13.0
- https://www.unicode.org/versions/Unicode13.0.0/ch18.pdf
- https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt
- http://unicode.org/reports/tr11/

[![CI Status](https://img.shields.io/travis/HevaWu/UnicodeEastAsianWidth.svg?style=flat)](https://travis-ci.org/HevaWu/UnicodeEastAsianWidth)
[![Version](https://img.shields.io/cocoapods/v/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)
[![License](https://img.shields.io/cocoapods/l/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)
[![Platform](https://img.shields.io/cocoapods/p/UnicodeEastAsianWidth.svg?style=flat)](https://cocoapods.org/pods/UnicodeEastAsianWidth)

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