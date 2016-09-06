//
//  MadLibViewController.swift
//  Self Introduction
//
//  Created by Dan Esrey on 2016/06/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class MadLibController: UIViewController {
    
    var userEntries = [String]()
    var adjective: String?
    var noun: String?
    var shouldAllowMadlib: Bool {
        return userEntries.count >= 2
    }
    
    var madlibButtonIsHidden: Bool {
        return !shouldAllowMadlib
    }
    
    @IBOutlet var textField: UITextField!
    @IBAction func enter(_ sender: AnyObject) {
        if (userEntries.count == 0) {
            if let input = textField.text, input.characters.count > 0 {
                adjective = input
                userEntries.append(adjective!)
            } else if (userEntries.count == 1) {
                if let input = textField.text, input.characters.count > 0 {
                    noun = input
                    userEntries.append(noun!)
                } else {
                    print("Text field is empty")
                }
            }
        }
        madlibButton.isHidden = madlibButtonIsHidden
    }
    
    @IBOutlet var madlibButton: UIButton!
    
    @IBAction func goToMadLib(_ sender: AnyObject) {
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MadLib2ViewController
        destination.name = name
    } */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
