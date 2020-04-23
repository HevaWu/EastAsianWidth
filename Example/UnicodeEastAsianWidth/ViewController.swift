//
//  ViewController.swift
//  UnicodeEastAsianWidth
//
//  Created by HevaWu on 04/23/2020.
//  Copyright (c) 2020 HevaWu. All rights reserved.
//

import UIKit
import UnicodeEastAsianWidth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str_en = "Hello"
        print("----str_en EastAsianWidthCount ------")
        print(str_en.unicodeScalars.countByEastAsianWidth())
        
        let str_ch = "你好"
        print("----str_ch EastAsianWidthCount ------")
        print(str_ch.unicodeScalars.countByEastAsianWidth())
        
        let str_jp = "こんにちは"
        print("----str_jp EastAsianWidthCount ------")
        print(str_jp.unicodeScalars.countByEastAsianWidth())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

