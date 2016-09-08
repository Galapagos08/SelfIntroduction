//
//  MadLib2ViewController.swift
//  Self Introduction
//
//  Created by Dan Esrey on 2016/06/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class MadLib2Controller: UIViewController {
    
    @IBOutlet var madLib: UILabel!
    internal var model: (first: String, second: String)?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let (first, second) = model else {
            fatalError("the impossible has happend")
        }
        
        madLib.text = "\(first) was your first word. \(second) was your second word"
    }
    
}
extension MadLib2Controller {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(model)
    }
}
