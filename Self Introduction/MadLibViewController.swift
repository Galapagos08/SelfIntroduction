//
//  MadLibViewController.swift
//  Self Introduction
//
//  Created by Dan Esrey on 2016/06/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

import UIKit

class MadLibController: UIViewController {
    var state: MadLibState?
    @IBOutlet var textField: UITextField!
    @IBOutlet var madlibButton: UIButton!
    @IBOutlet var enterButton: UIButton!

    @IBAction func enter(_ sender: AnyObject) {
        guard let newText = textField?.text, newText.isEmpty == false else {
            return
        }
        
        
        switch state! {
            case .noStrings:
                state = .oneString(newText)
            case let .oneString(first):
                state = .twoStrings(first, newText)
            case .twoStrings:
                fatalError("impossible")
        }
        
        
        updateUsingModel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        state = .noStrings
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUsingModel()
    }
    
    func updateUsingModel() {
        switch state! {
        case .noStrings:
            madlibButton.isHidden = true
            textField.isHidden = false
            enterButton.isHidden = false
            textField.text = ""
            textField.placeholder = "Enter an adjective"
        case .oneString:
            madlibButton.isHidden = true
            textField.isHidden = false
            enterButton.isHidden = false
            textField.text = ""
            textField.placeholder = "Enter a noun"
        case .twoStrings:
            madlibButton.isHidden = false
            textField.isHidden = true
            enterButton.isHidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let storyVC = segue.destination as! MadLib2Controller
        guard case let .twoStrings(first, second)? = state else {
            fatalError("How Sway?")
            
        }
        storyVC.model = (first, second)
    
    }

}
