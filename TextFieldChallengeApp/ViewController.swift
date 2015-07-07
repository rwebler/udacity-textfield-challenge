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
    //let cashDelegate = CashTextFieldDelegate()
    
    // Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the lockable text switch to locked
        self.lockableTextSwitch.setOn(true, animated: true)
        
        // Set the three delegates
        self.textField1.delegate = zipDelegate
        //self.textField2.delegate = colorizerDelegate
        //self.textField3.delegate = randomColorDelegate
    }
    
    
    // Text Field Delegate Methods
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Figure out what the new text will be, if we return true
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        // hide the label if the newText will be an empty string
        //self.characterCountLabel.hidden = (newText.length == 0)
        
        // Write the length of newText into the label
        //self.characterCountLabel.text = String(newText.length)
        
        // returning true gives the text field permission to change its text
        return true;
    }
}

