//
//  MadLib2ViewController.swift
//  Self Introduction
//
//  Created by Dan Esrey on 2016/06/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class MadLib2Controller: UIViewController {
    var text: String? {
        didSet {
            madLib.text = text ?? ""
        }
    }
    

    @IBOutlet var madLib: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
