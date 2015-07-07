//
//  ZipTextFieldDelegate.swift
//  TextFieldChallengeApp
//
//  Created by Rodrigo Webler on 7/6/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import Foundation
import UIKit

class ZipTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        let regex = NSRegularExpression(pattern: "^[0-9]{0,5}+$",
            options: nil, error: nil)!
        
        let matchCount = regex.numberOfMatchesInString(newText as String, options: nil, range: NSMakeRange(0, newText.length))
        
        println(matchCount)
        
        // If over five digits or is not numeric, prevent editing.
        return matchCount > 0
        
    }
}