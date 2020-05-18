// 
// EdgeCharacters+Generated.swift
// He Wu
// 
// Copyright © 2020 He Wu. All rights reserved.
// 

import Foundation

let EastAsianFullwidthEdgeRawScalarValue: [UInt32] = [
0x3000,0xff01,0xff60,0xffe0,0xffe6,
]

let EastAsianFullwidthEdgeUnicodeScalar: [UnicodeScalar] = EastAsianFullwidthEdgeRawScalarValue.flatMap(UnicodeScalar.init)

let EastAsianHalfwidthEdgeRawScalarValue: [UInt32] = [
0x20a9,0xff61,0xffbe,0xffc2,0xffc7,0xffca,0xffcf,0xffd2,0xffd7,0xffda,0xffdc,0xffe8,0xffee,
]

let EastAsianHalfwidthEdgeUnicodeScalar: [UnicodeScalar] = EastAsianHalfwidthEdgeRawScalarValue.flatMap(UnicodeScalar.init)

let EastAsianWideEdgeRawScalarValue: [UInt32] = [
0x1100,0x231a,0x231b,0x2329,0x232a,0x23e9,0x23ec,0x23f0,0x23f3,0x25fd,0x25fe,0x2614,0x2615,0x2648,0x2653,0x267f,0x2693,0x26a1,0x26aa,0x26ab,0x26bd,0x26be,0x26c4,0x26c5,0x26ce,0x26d4,0x26ea,0x26f2,0x26f3,0x26f5,0x26fa,0x26fd,0x2705,0x270a,0x270b,0x2728,0x274c,0x274e,0x2753,0x2755,0x2757,0x2795,0x2797,0x27b0,0x27bf,0x2b1b,0x2b1c,0x2b50,0x2b55,0x2e80,0x2e99,0x2e9b,0x2ef3,0x2f00,0x2fd5,0x2ff0,0x2ffb,0x3001,0x303e,0x3041,0x3096,0x3099,0x30ff,0x3105,0x312f,0x3131,0x318e,0x3190,0x31e3,0x31f0,0x321e,0x3220,0x3247,0x3250,0x4dbf,0x4e00,0xa48c,0xa490,0xa4c6,0xa960,0xa97c,0xac00,0xd7a3,0xf900,0xfaff,0xfe10,0xfe19,0xfe30,0xfe52,0xfe54,0xfe66,0xfe68,0xfe6b,0x16fe0,0x16fe4,0x16ff0,0x16ff1,0x17000,0x187f7,0x18800,0x18cd5,0x18d00,0x18d08,0x1b000,0x1b11e,0x1b150,0x1b152,0x1b164,0x1b167,0x1b170,0x1b2fb,0x1f004,0x1f0cf,0x1f18e,0x1f191,0x1f19a,0x1f200,0x1f202,0x1f210,0x1f23b,0x1f240,0x1f248,0x1f250,0x1f251,0x1f260,0x1f265,0x1f300,0x1f320,0x1f32d,0x1f335,0x1f337,0x1f37c,0x1f37e,0x1f393,0x1f3a0,0x1f3ca,0x1f3cf,0x1f3d3,0x1f3e0,0x1f3f0,0x1f3f4,0x1f3f8,0x1f43e,0x1f440,0x1f442,0x1f4fc,0x1f4ff,0x1f53d,0x1f54b,0x1f54e,0x1f550,0x1f567,0x1f57a,0x1f595,0x1f596,0x1f5a4,0x1f5fb,0x1f64f,0x1f680,0x1f6c5,0x1f6cc,0x1f6d0,0x1f6d2,0x1f6d5,0x1f6d7,0x1f6eb,0x1f6ec,0x1f6f4,0x1f6fc,0x1f7e0,0x1f7eb,0x1f90c,0x1f93a,0x1f93c,0x1f945,0x1f947,0x1f978,0x1f97a,0x1f9cb,0x1f9cd,0x1f9ff,0x1fa70,0x1fa74,0x1fa78,0x1fa7a,0x1fa80,0x1fa86,0x1fa90,0x1faa8,0x1fab0,0x1fab6,0x1fac0,0x1fac2,0x1fad0,0x1fad6,0x20000,0x2fffd,0x30000,0x3fffd,
]

let EastAsianWideEdgeUnicodeScalar: [UnicodeScalar] = EastAsianWideEdgeRawScalarValue.flatMap(UnicodeScalar.init)

let EastAsianNarrowEdgeRawScalarValue: [UInt32] = [
0x20,0x7e,0xa2,0xa3,0xa5,0xa6,0xac,0xaf,0x27e6,0x27ed,0x2985,0x2986,
]

let EastAsianNarrowEdgeUnicodeScalar: [UnicodeScalar] = EastAsianNarrowEdgeRawScalarValue.flatMap(UnicodeScalar.init)

let EastAsianAmbiguousEdgeRawScalarValue: [UInt32] = [
0xa1,0xa4,0xa7,0xa8,0xaa,0xad,0xae,0xb0,0xb4,0xb6,0xba,0xbc,0xbf,0xc6,0xd0,0xd7,0xd8,0xde,0xe1,0xe6,0xe8,0xea,0xec,0xed,0xf0,0xf2,0xf3,0xf7,0xfa,0xfc,0xfe,0x101,0x111,0x113,0x11b,0x126,0x127,0x12b,0x131,0x133,0x138,0x13f,0x142,0x144,0x148,0x14b,0x14d,0x152,0x153,0x166,0x167,0x16b,0x1ce,0x1d0,0x1d2,0x1d4,0x1d6,0x1d8,0x1da,0x1dc,0x251,0x261,0x2c4,0x2c7,0x2c9,0x2cb,0x2cd,0x2d0,0x2d8,0x2db,0x2dd,0x2df,0x300,0x36f,0x391,0x3a1,0x3a3,0x3a9,0x3b1,0x3c1,0x3c3,0x3c9,0x401,0x410,0x44f,0x451,0x2010,0x2013,0x2016,0x2018,0x2019,0x201c,0x201d,0x2020,0x2022,0x2024,0x2027,0x2030,0x2032,0x2033,0x2035,0x203b,0x203e,0x2074,0x207f,0x2081,0x2084,0x20ac,0x2103,0x2105,0x2109,0x2113,0x2116,0x2121,0x2122,0x2126,0x212b,0x2153,0x2154,0x215b,0x215e,0x2160,0x216b,0x2170,0x2179,0x2189,0x2190,0x2199,0x21b8,0x21b9,0x21d2,0x21d4,0x21e7,0x2200,0x2202,0x2203,0x2207,0x2208,0x220b,0x220f,0x2211,0x2215,0x221a,0x221d,0x2220,0x2223,0x2225,0x2227,0x222c,0x222e,0x2234,0x2237,0x223c,0x223d,0x2248,0x224c,0x2252,0x2260,0x2261,0x2264,0x2267,0x226a,0x226b,0x226e,0x226f,0x2282,0x2283,0x2286,0x2287,0x2295,0x2299,0x22a5,0x22bf,0x2312,0x2460,0x24e9,0x24eb,0x254b,0x2550,0x2573,0x2580,0x258f,0x2592,0x2595,0x25a0,0x25a1,0x25a3,0x25a9,0x25b2,0x25b3,0x25b6,0x25b7,0x25bc,0x25bd,0x25c0,0x25c1,0x25c6,0x25c8,0x25cb,0x25ce,0x25d1,0x25e2,0x25e5,0x25ef,0x2605,0x2606,0x2609,0x260e,0x260f,0x261c,0x261e,0x2640,0x2642,0x2660,0x2661,0x2663,0x2665,0x2667,0x266a,0x266c,0x266d,0x266f,0x269e,0x269f,0x26bf,0x26c6,0x26cd,0x26cf,0x26d3,0x26d5,0x26e1,0x26e3,0x26e8,0x26e9,0x26eb,0x26f1,0x26f4,0x26f6,0x26f9,0x26fb,0x26fc,0x26fe,0x26ff,0x273d,0x2776,0x277f,0x2b56,0x2b59,0x3248,0x324f,0xe000,0xf8ff,0xfe00,0xfe0f,0xfffd,0x1f100,0x1f10a,0x1f110,0x1f12d,0x1f130,0x1f169,0x1f170,0x1f18d,0x1f18f,0x1f190,0x1f19b,0x1f1ac,0xe0100,0xe01ef,0xf0000,0xffffd,0x100000,0x10fffd,
]

let EastAsianAmbiguousEdgeUnicodeScalar: [UnicodeScalar] = EastAsianAmbiguousEdgeRawScalarValue.flatMap(UnicodeScalar.init)

let EastAsianNeutralEdgeRawScalarValue: [UInt32] = [
0x0,0x7f,0xa0,0xa9,0xab,0xb5,0xbb,0xc0,0xc5,0xc7,0xcf,0xd1,0xd6,0xd9,0xdd,0xe2,0xe5,0xe7,0xeb,0xee,0xef,0xf1,0xf4,0xf6,0xfb,0xfd,0xff,0x100,0x102,0x110,0x112,0x114,0x11a,0x11c,0x125,0x128,0x12a,0x12c,0x130,0x134,0x137,0x139,0x13e,0x143,0x145,0x147,0x14c,0x14e,0x151,0x154,0x165,0x168,0x16a,0x16c,0x1cd,0x1cf,0x1d1,0x1d3,0x1d5,0x1d7,0x1d9,0x1db,0x1dd,0x250,0x252,0x260,0x262,0x2c3,0x2c5,0x2c6,0x2c8,0x2cc,0x2ce,0x2cf,0x2d1,0x2d7,0x2dc,0x2de,0x2e0,0x2ff,0x370,0x377,0x37a,0x37f,0x384,0x38a,0x38c,0x38e,0x390,0x3aa,0x3b0,0x3c2,0x3ca,0x400,0x402,0x40f,0x450,0x452,0x52f,0x531,0x556,0x559,0x58a,0x58d,0x58f,0x591,0x5c7,0x5d0,0x5ea,0x5ef,0x5f4,0x600,0x61c,0x61e,0x70d,0x70f,0x74a,0x74d,0x7b1,0x7c0,0x7fa,0x7fd,0x82d,0x830,0x83e,0x840,0x85b,0x85e,0x860,0x86a,0x8a0,0x8b4,0x8b6,0x8c7,0x8d3,0x983,0x985,0x98c,0x98f,0x990,0x993,0x9a8,0x9aa,0x9b0,0x9b2,0x9b6,0x9b9,0x9bc,0x9c4,0x9c7,0x9c8,0x9cb,0x9ce,0x9d7,0x9dc,0x9dd,0x9df,0x9e3,0x9e6,0x9fe,0xa01,0xa03,0xa05,0xa0a,0xa0f,0xa10,0xa13,0xa28,0xa2a,0xa30,0xa32,0xa33,0xa35,0xa36,0xa38,0xa39,0xa3c,0xa3e,0xa42,0xa47,0xa48,0xa4b,0xa4d,0xa51,0xa59,0xa5c,0xa5e,0xa66,0xa76,0xa81,0xa83,0xa85,0xa8d,0xa8f,0xa91,0xa93,0xaa8,0xaaa,0xab0,0xab2,0xab3,0xab5,0xab9,0xabc,0xac5,0xac7,0xac9,0xacb,0xacd,0xad0,0xae0,0xae3,0xae6,0xaf1,0xaf9,0xaff,0xb01,0xb03,0xb05,0xb0c,0xb0f,0xb10,0xb13,0xb28,0xb2a,0xb30,0xb32,0xb33,0xb35,0xb39,0xb3c,0xb44,0xb47,0xb48,0xb4b,0xb4d,0xb55,0xb57,0xb5c,0xb5d,0xb5f,0xb63,0xb66,0xb77,0xb82,0xb83,0xb85,0xb8a,0xb8e,0xb90,0xb92,0xb95,0xb99,0xb9a,0xb9c,0xb9e,0xb9f,0xba3,0xba4,0xba8,0xbaa,0xbae,0xbb9,0xbbe,0xbc2,0xbc6,0xbc8,0xbca,0xbcd,0xbd0,0xbd7,0xbe6,0xbfa,0xc00,0xc0c,0xc0e,0xc10,0xc12,0xc28,0xc2a,0xc39,0xc3d,0xc44,0xc46,0xc48,0xc4a,0xc4d,0xc55,0xc56,0xc58,0xc5a,0xc60,0xc63,0xc66,0xc6f,0xc77,0xc8c,0xc8e,0xc90,0xc92,0xca8,0xcaa,0xcb3,0xcb5,0xcb9,0xcbc,0xcc4,0xcc6,0xcc8,0xcca,0xccd,0xcd5,0xcd6,0xcde,0xce0,0xce3,0xce6,0xcef,0xcf1,0xcf2,0xd00,0xd0c,0xd0e,0xd10,0xd12,0xd44,0xd46,0xd48,0xd4a,0xd4f,0xd54,0xd63,0xd66,0xd7f,0xd81,0xd83,0xd85,0xd96,0xd9a,0xdb1,0xdb3,0xdbb,0xdbd,0xdc0,0xdc6,0xdca,0xdcf,0xdd4,0xdd6,0xdd8,0xddf,0xde6,0xdef,0xdf2,0xdf4,0xe01,0xe3a,0xe3f,0xe5b,0xe81,0xe82,0xe84,0xe86,0xe8a,0xe8c,0xea3,0xea5,0xea7,0xebd,0xec0,0xec4,0xec6,0xec8,0xecd,0xed0,0xed9,0xedc,0xedf,0xf00,0xf47,0xf49,0xf6c,0xf71,0xf97,0xf99,0xfbc,0xfbe,0xfcc,0xfce,0xfda,0x1000,0x10c5,0x10c7,0x10cd,0x10d0,0x10ff,0x1160,0x1248,0x124a,0x124d,0x1250,0x1256,0x1258,0x125a,0x125d,0x1260,0x1288,0x128a,0x128d,0x1290,0x12b0,0x12b2,0x12b5,0x12b8,0x12be,0x12c0,0x12c2,0x12c5,0x12c8,0x12d6,0x12d8,0x1310,0x1312,0x1315,0x1318,0x135a,0x135d,0x137c,0x1380,0x1399,0x13a0,0x13f5,0x13f8,0x13fd,0x1400,0x169c,0x16a0,0x16f8,0x1700,0x170c,0x170e,0x1714,0x1720,0x1736,0x1740,0x1753,0x1760,0x176c,0x176e,0x1770,0x1772,0x1773,0x1780,0x17dd,0x17e0,0x17e9,0x17f0,0x17f9,0x1800,0x180e,0x1810,0x1819,0x1820,0x1878,0x1880,0x18aa,0x18b0,0x18f5,0x1900,0x191e,0x1920,0x192b,0x1930,0x193b,0x1940,0x1944,0x196d,0x1970,0x1974,0x1980,0x19ab,0x19b0,0x19c9,0x19d0,0x19da,0x19de,0x1a1b,0x1a1e,0x1a5e,0x1a60,0x1a7c,0x1a7f,0x1a89,0x1a90,0x1a99,0x1aa0,0x1aad,0x1ab0,0x1ac0,0x1b00,0x1b4b,0x1b50,0x1b7c,0x1b80,0x1bf3,0x1bfc,0x1c37,0x1c3b,0x1c49,0x1c4d,0x1c88,0x1c90,0x1cba,0x1cbd,0x1cc7,0x1cd0,0x1cfa,0x1d00,0x1df9,0x1dfb,0x1f15,0x1f18,0x1f1d,0x1f20,0x1f45,0x1f48,0x1f4d,0x1f50,0x1f57,0x1f59,0x1f5b,0x1f5d,0x1f5f,0x1f7d,0x1f80,0x1fb4,0x1fb6,0x1fc4,0x1fc6,0x1fd3,0x1fd6,0x1fdb,0x1fdd,0x1fef,0x1ff2,0x1ff4,0x1ff6,0x1ffe,0x2000,0x200f,0x2011,0x2012,0x2017,0x201a,0x201b,0x201e,0x201f,0x2023,0x2028,0x202f,0x2031,0x2034,0x2036,0x203a,0x203c,0x203d,0x203f,0x2064,0x2066,0x2071,0x2075,0x207e,0x2080,0x2085,0x208e,0x2090,0x209c,0x20a0,0x20a8,0x20aa,0x20ab,0x20ad,0x20bf,0x20d0,0x20f0,0x2100,0x2102,0x2104,0x2106,0x2108,0x210a,0x2112,0x2114,0x2115,0x2117,0x2120,0x2123,0x2125,0x2127,0x212a,0x212c,0x2152,0x2155,0x215a,0x215f,0x216c,0x216f,0x217a,0x2188,0x218a,0x218b,0x219a,0x21b7,0x21ba,0x21d1,0x21d3,0x21d5,0x21e6,0x21e8,0x21ff,0x2201,0x2204,0x2206,0x2209,0x220a,0x220c,0x220e,0x2210,0x2212,0x2214,0x2216,0x2219,0x221b,0x221c,0x2221,0x2222,0x2224,0x2226,0x222d,0x222f,0x2233,0x2238,0x223b,0x223e,0x2247,0x2249,0x224b,0x224d,0x2251,0x2253,0x225f,0x2262,0x2263,0x2268,0x2269,0x226c,0x226d,0x2270,0x2281,0x2284,0x2285,0x2288,0x2294,0x2296,0x2298,0x229a,0x22a4,0x22a6,0x22be,0x22c0,0x2311,0x2313,0x2319,0x231c,0x2328,0x232b,0x23e8,0x23ed,0x23ef,0x23f1,0x23f2,0x23f4,0x2426,0x2440,0x244a,0x24ea,0x254c,0x254f,0x2574,0x257f,0x2590,0x2591,0x2596,0x259f,0x25a2,0x25aa,0x25b1,0x25b4,0x25b5,0x25b8,0x25bb,0x25be,0x25bf,0x25c2,0x25c5,0x25c9,0x25ca,0x25cc,0x25cd,0x25d2,0x25e1,0x25e6,0x25ee,0x25f0,0x25fc,0x25ff,0x2604,0x2607,0x2608,0x260a,0x260d,0x2610,0x2613,0x2616,0x261b,0x261d,0x261f,0x263f,0x2641,0x2643,0x2647,0x2654,0x265f,0x2662,0x2666,0x266b,0x266e,0x2670,0x267e,0x2680,0x2692,0x2694,0x269d,0x26a0,0x26a2,0x26a9,0x26ac,0x26bc,0x26c0,0x26c3,0x26e2,0x26e4,0x26e7,0x2700,0x2704,0x2706,0x2709,0x270c,0x2727,0x2729,0x273c,0x273e,0x274b,0x274d,0x274f,0x2752,0x2756,0x2758,0x2775,0x2780,0x2794,0x2798,0x27af,0x27b1,0x27be,0x27c0,0x27e5,0x27ee,0x2984,0x2987,0x2b1a,0x2b1d,0x2b4f,0x2b51,0x2b54,0x2b5a,0x2b73,0x2b76,0x2b95,0x2b97,0x2c2e,0x2c30,0x2c5e,0x2c60,0x2cf3,0x2cf9,0x2d25,0x2d27,0x2d2d,0x2d30,0x2d67,0x2d6f,0x2d70,0x2d7f,0x2d96,0x2da0,0x2da6,0x2da8,0x2dae,0x2db0,0x2db6,0x2db8,0x2dbe,0x2dc0,0x2dc6,0x2dc8,0x2dce,0x2dd0,0x2dd6,0x2dd8,0x2dde,0x2de0,0x2e52,0x303f,0x4dc0,0x4dff,0xa4d0,0xa62b,0xa640,0xa6f7,0xa700,0xa7bf,0xa7c2,0xa7ca,0xa7f5,0xa82c,0xa830,0xa839,0xa840,0xa877,0xa880,0xa8c5,0xa8ce,0xa8d9,0xa8e0,0xa953,0xa95f,0xa980,0xa9cd,0xa9cf,0xa9d9,0xa9de,0xa9fe,0xaa00,0xaa36,0xaa40,0xaa4d,0xaa50,0xaa59,0xaa5c,0xaac2,0xaadb,0xaaf6,0xab01,0xab06,0xab09,0xab0e,0xab11,0xab16,0xab20,0xab26,0xab28,0xab2e,0xab30,0xab6b,0xab70,0xabed,0xabf0,0xabf9,0xd7b0,0xd7c6,0xd7cb,0xd7fb,0xd800,0xdfff,0xfb00,0xfb06,0xfb13,0xfb17,0xfb1d,0xfb36,0xfb38,0xfb3c,0xfb3e,0xfb40,0xfb41,0xfb43,0xfb44,0xfb46,0xfbc1,0xfbd3,0xfd3f,0xfd50,0xfd8f,0xfd92,0xfdc7,0xfdf0,0xfdfd,0xfe20,0xfe2f,0xfe70,0xfe74,0xfe76,0xfefc,0xfeff,0xfff9,0xfffc,0x10000,0x1000b,0x1000d,0x10026,0x10028,0x1003a,0x1003c,0x1003d,0x1003f,0x1004d,0x10050,0x1005d,0x10080,0x100fa,0x10100,0x10102,0x10107,0x10133,0x10137,0x1018e,0x10190,0x1019c,0x101a0,0x101d0,0x101fd,0x10280,0x1029c,0x102a0,0x102d0,0x102e0,0x102fb,0x10300,0x10323,0x1032d,0x1034a,0x10350,0x1037a,0x10380,0x1039d,0x1039f,0x103c3,0x103c8,0x103d5,0x10400,0x1049d,0x104a0,0x104a9,0x104b0,0x104d3,0x104d8,0x104fb,0x10500,0x10527,0x10530,0x10563,0x1056f,0x10600,0x10736,0x10740,0x10755,0x10760,0x10767,0x10800,0x10805,0x10808,0x1080a,0x10835,0x10837,0x10838,0x1083c,0x1083f,0x10855,0x10857,0x1089e,0x108a7,0x108af,0x108e0,0x108f2,0x108f4,0x108f5,0x108fb,0x1091b,0x1091f,0x10939,0x1093f,0x10980,0x109b7,0x109bc,0x109cf,0x109d2,0x10a03,0x10a05,0x10a06,0x10a0c,0x10a13,0x10a15,0x10a17,0x10a19,0x10a35,0x10a38,0x10a3a,0x10a3f,0x10a48,0x10a50,0x10a58,0x10a60,0x10a9f,0x10ac0,0x10ae6,0x10aeb,0x10af6,0x10b00,0x10b35,0x10b39,0x10b55,0x10b58,0x10b72,0x10b78,0x10b91,0x10b99,0x10b9c,0x10ba9,0x10baf,0x10c00,0x10c48,0x10c80,0x10cb2,0x10cc0,0x10cf2,0x10cfa,0x10d27,0x10d30,0x10d39,0x10e60,0x10e7e,0x10e80,0x10ea9,0x10eab,0x10ead,0x10eb0,0x10eb1,0x10f00,0x10f27,0x10f30,0x10f59,0x10fb0,0x10fcb,0x10fe0,0x10ff6,0x11000,0x1104d,0x11052,0x1106f,0x1107f,0x110c1,0x110cd,0x110d0,0x110e8,0x110f0,0x110f9,0x11100,0x11134,0x11136,0x11147,0x11150,0x11176,0x11180,0x111df,0x111e1,0x111f4,0x11200,0x11211,0x11213,0x1123e,0x11280,0x11286,0x11288,0x1128a,0x1128d,0x1128f,0x1129d,0x1129f,0x112a9,0x112b0,0x112ea,0x112f0,0x112f9,0x11300,0x11303,0x11305,0x1130c,0x1130f,0x11310,0x11313,0x11328,0x1132a,0x11330,0x11332,0x11333,0x11335,0x11339,0x1133b,0x11344,0x11347,0x11348,0x1134b,0x1134d,0x11350,0x11357,0x1135d,0x11363,0x11366,0x1136c,0x11370,0x11374,0x11400,0x1145b,0x1145d,0x11461,0x11480,0x114c7,0x114d0,0x114d9,0x11580,0x115b5,0x115b8,0x115dd,0x11600,0x11644,0x11650,0x11659,0x11660,0x1166c,0x11680,0x116b8,0x116c0,0x116c9,0x11700,0x1171a,0x1171d,0x1172b,0x11730,0x1173f,0x11800,0x1183b,0x118a0,0x118f2,0x118ff,0x11906,0x11909,0x1190c,0x11913,0x11915,0x11916,0x11918,0x11935,0x11937,0x11938,0x1193b,0x11946,0x11950,0x11959,0x119a0,0x119a7,0x119aa,0x119d7,0x119da,0x119e4,0x11a00,0x11a47,0x11a50,0x11aa2,0x11ac0,0x11af8,0x11c00,0x11c08,0x11c0a,0x11c36,0x11c38,0x11c45,0x11c50,0x11c6c,0x11c70,0x11c8f,0x11c92,0x11ca7,0x11ca9,0x11cb6,0x11d00,0x11d06,0x11d08,0x11d09,0x11d0b,0x11d36,0x11d3a,0x11d3c,0x11d3d,0x11d3f,0x11d47,0x11d50,0x11d59,0x11d60,0x11d65,0x11d67,0x11d68,0x11d6a,0x11d8e,0x11d90,0x11d91,0x11d93,0x11d98,0x11da0,0x11da9,0x11ee0,0x11ef8,0x11fb0,0x11fc0,0x11ff1,0x11fff,0x12399,0x12400,0x1246e,0x12470,0x12474,0x12480,0x12543,0x13000,0x1342e,0x13430,0x13438,0x14400,0x14646,0x16800,0x16a38,0x16a40,0x16a5e,0x16a60,0x16a69,0x16a6e,0x16a6f,0x16ad0,0x16aed,0x16af0,0x16af5,0x16b00,0x16b45,0x16b50,0x16b59,0x16b5b,0x16b61,0x16b63,0x16b77,0x16b7d,0x16b8f,0x16e40,0x16e9a,0x16f00,0x16f4a,0x16f4f,0x16f87,0x16f8f,0x16f9f,0x1bc00,0x1bc6a,0x1bc70,0x1bc7c,0x1bc80,0x1bc88,0x1bc90,0x1bc99,0x1bc9c,0x1bca3,0x1d000,0x1d0f5,0x1d100,0x1d126,0x1d129,0x1d1e8,0x1d200,0x1d245,0x1d2e0,0x1d2f3,0x1d300,0x1d356,0x1d360,0x1d378,0x1d400,0x1d454,0x1d456,0x1d49c,0x1d49e,0x1d49f,0x1d4a2,0x1d4a5,0x1d4a6,0x1d4a9,0x1d4ac,0x1d4ae,0x1d4b9,0x1d4bb,0x1d4bd,0x1d4c3,0x1d4c5,0x1d505,0x1d507,0x1d50a,0x1d50d,0x1d514,0x1d516,0x1d51c,0x1d51e,0x1d539,0x1d53b,0x1d53e,0x1d540,0x1d544,0x1d546,0x1d54a,0x1d550,0x1d552,0x1d6a5,0x1d6a8,0x1d7cb,0x1d7ce,0x1da8b,0x1da9b,0x1da9f,0x1daa1,0x1daaf,0x1e000,0x1e006,0x1e008,0x1e018,0x1e01b,0x1e021,0x1e023,0x1e024,0x1e026,0x1e02a,0x1e100,0x1e12c,0x1e130,0x1e13d,0x1e140,0x1e149,0x1e14e,0x1e14f,0x1e2c0,0x1e2f9,0x1e2ff,0x1e800,0x1e8c4,0x1e8c7,0x1e8d6,0x1e900,0x1e94b,0x1e950,0x1e959,0x1e95e,0x1e95f,0x1ec71,0x1ecb4,0x1ed01,0x1ed3d,0x1ee00,0x1ee03,0x1ee05,0x1ee1f,0x1ee21,0x1ee22,0x1ee24,0x1ee27,0x1ee29,0x1ee32,0x1ee34,0x1ee37,0x1ee39,0x1ee3b,0x1ee42,0x1ee47,0x1ee49,0x1ee4b,0x1ee4d,0x1ee4f,0x1ee51,0x1ee52,0x1ee54,0x1ee57,0x1ee59,0x1ee5b,0x1ee5d,0x1ee5f,0x1ee61,0x1ee62,0x1ee64,0x1ee67,0x1ee6a,0x1ee6c,0x1ee72,0x1ee74,0x1ee77,0x1ee79,0x1ee7c,0x1ee7e,0x1ee80,0x1ee89,0x1ee8b,0x1ee9b,0x1eea1,0x1eea3,0x1eea5,0x1eea9,0x1eeab,0x1eebb,0x1eef0,0x1eef1,0x1f000,0x1f003,0x1f005,0x1f02b,0x1f030,0x1f093,0x1f0a0,0x1f0ae,0x1f0b1,0x1f0bf,0x1f0c1,0x1f0ce,0x1f0d1,0x1f0f5,0x1f10b,0x1f10f,0x1f12e,0x1f12f,0x1f16a,0x1f16f,0x1f1ad,0x1f1e6,0x1f1ff,0x1f321,0x1f32c,0x1f336,0x1f37d,0x1f394,0x1f39f,0x1f3cb,0x1f3ce,0x1f3d4,0x1f3df,0x1f3f1,0x1f3f3,0x1f3f5,0x1f3f7,0x1f43f,0x1f441,0x1f4fd,0x1f4fe,0x1f53e,0x1f54a,0x1f54f,0x1f568,0x1f579,0x1f57b,0x1f594,0x1f597,0x1f5a3,0x1f5a5,0x1f5fa,0x1f650,0x1f67f,0x1f6c6,0x1f6cb,0x1f6cd,0x1f6cf,0x1f6d3,0x1f6d4,0x1f6e0,0x1f6ea,0x1f6f0,0x1f6f3,0x1f700,0x1f773,0x1f780,0x1f7d8,0x1f800,0x1f80b,0x1f810,0x1f847,0x1f850,0x1f859,0x1f860,0x1f887,0x1f890,0x1f8ad,0x1f8b0,0x1f8b1,0x1f900,0x1f90b,0x1f93b,0x1f946,0x1fa00,0x1fa53,0x1fa60,0x1fa6d,0x1fb00,0x1fb92,0x1fb94,0x1fbca,0x1fbf0,0x1fbf9,0xe0001,0xe0020,0xe007f,
]

let EastAsianNeutralEdgeUnicodeScalar: [UnicodeScalar] = EastAsianNeutralEdgeRawScalarValue.flatMap(UnicodeScalar.init)

