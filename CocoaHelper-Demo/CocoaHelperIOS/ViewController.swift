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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

