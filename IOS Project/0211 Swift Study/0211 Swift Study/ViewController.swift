//
//  ViewController.swift
//  0211 Swift Study
//
//  Created by katniss on 2017. 2. 11..
//  Copyright © 2017년 katniss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        print("touched \(digit) digit")
    }
}

