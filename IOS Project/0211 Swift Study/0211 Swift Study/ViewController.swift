//
//  ViewController.swift
//  0211 Swift Study
//
//  Created by katniss on 2017. 2. 11..
//  Copyright © 2017년 katniss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
  
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
        display.text = textCurrentlyInDisplay + digit
        }else{
        display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        
    }
}

