//
//  ViewController.swift
//  TextFieldChallengeApp
//
//  Created by Rodrigo Webler on 7/2/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var lockableTextSwitch: UISwitch!
    
    // Text Field Delegate objects
    let zipDelegate = ZipTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the lockable text switch to locked
        lockableTextSwitch.setOn(true, animated: true)
        
        // Set the three delegates
        textField1.delegate = zipDelegate
        textField2.delegate = cashDelegate
        textField3.delegate = self
    }
    
    
    // Text Field Delegate Methods
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return lockableTextSwitch.on
    }
}

