//
//  ViewController.swift
//  HelloWorldSwift
//
//  Created by zachary radtka on 9/15/14.
//  Copyright (c) 2014 Zachary Radtka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var nameLabel : UILabel = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloWorldAction(sender : UITextField) {
        nameLabel.text = "Hi \(sender.text) "
    }

}

