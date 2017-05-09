//
//  ViewController.swift
//  CocoaHelperIOS
//
//  Created by Meniny on 2017-05-03.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import UIKit
import CocoaHelper

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gif = UIImage.gif(named: "1.gif")
        self.imageView.image = gif
        
        let systemVersion = UIDevice.current.systemVersion
        if let alphanumericSystemVersion = UIDevice.current.alphanumericSystemVersion {
            print(systemVersion + "(" + alphanumericSystemVersion + ")")
        } else {
            print(systemVersion)
        }
        
        let s1 = "SUV"
        let s2 = s1 * 4
        print(s2)
        let s3 = s2.repeating(2)
        print(s3)
        let s4 = s1.repeating(5, separator: "-")
        print(s4)
        let s5 = s4 - "U"
        print(s5)
        var a1 = [2] + 3
        print(a1)
        a1 += 4
        print(a1)
        let a2 = a1 * 4
        print(a2)
        a1 *= 4
        print(a1)
        let a3 = ~a1
        print(a3)
        let a4 = a3 - [3, 2]
        print(a4)
        
        let str: String? = nil
        if !~str {
            print("str is not nil")
        } else {
            print("str is nil")
        }
        
        var d1 = ["string": 1, "string2": true] as [String : Any]
        d1 -= "string"
        print(d1)
        let d2 = [1: "string1", "key": false] as [AnyHashable : Any]
        let d3 = d2 - ("key" as AnyHashable)
        print(d3.prettyString)
        let d4 = d3 + ["d3": "d3's value"]
        print(d4.prettyString)
        let ad = d3 * 3
        print(ad.prettyString)
        
        let ns = "abc" => 2
        print(ns != nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

