//
//  ViewController.swift
//  0305 SwiftStudy
//
//  Created by katniss on 2017. 3. 5..
//  Copyright © 2017년 katniss. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
  
    @IBOutlet weak var display: UILabel!
    
    
    @IBAction func touchDigit(sender: UIButton) {
      
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display!.text!
        display!.text = textCurrentlyInDisplay + digit
        
        
    }
 

}

