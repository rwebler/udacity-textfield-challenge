//
//  CashTextFieldDelegate.swift
//  TextFieldChallengeApp
//
//  Created by Rodrigo Webler on 7/6/15.
//  Copyright (c) 2015 Rodrigo Webler. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let intString = string.toInt() {
            println(intString)
            var newText = textField.text
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            formatter.locale = NSLocale(localeIdentifier: "en_US")
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
            
            var amount = formatter.numberFromString(newText)?.doubleValue ?? 0.0
            
            var intAmount = Int(amount * 100)
            
            var strAmount = String(intAmount) + string
            
            var decAmount = Double(strAmount.toInt()!) / 100
            
            textField.text = formatter.stringFromNumber(decAmount as NSNumber)
            
            println(textField.text)
            
            return false
        } else {
            return true
        }
    }
}