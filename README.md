# EastAsianWidth
Parse Unicode EastAsianWidth from unicode.org & Generate related Swift file

Unicode Version: 13.0
https://www.unicode.org/versions/Unicode13.0.0/ch18.pdf
https://www.unicode.org/Public/13.0.0/ucd/EastAsianWidth.txt
http://unicode.org/reports/tr11/

## Code Structure:

```s
--- EastAsianWidth (Swift Package)
 |      |
 |       -- Sources/EastAsianWidth
 |                    |
 |                     -- String+Extension.swift
 |                     -- UnicodeScarlar+Generated.swift
 |                     -- UnicodeScarlar+Recommendations.swift
 |                     -- UnicodeScarlarView+Extension.swift
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
