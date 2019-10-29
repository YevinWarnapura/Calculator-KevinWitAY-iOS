//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatedValue: Int = 0
    var calculatedValueTwo: Int = 0
    
    var currentNumber: String = "0" {
        willSet {
            if let floatCurrentNumber = Int(newValue), let floatOldNumber = Int(currentNumber) {
                calculatedValue = (floatOldNumber * 10) + floatCurrentNumber
            }
        }
        didSet {
            currentNumber = String(calculatedValue)
        }
    }
    
    var currentNumberTwo: String = "0" {
        willSet {
            if let floatCurrentNumber = Int(newValue), let floatOldNumber = Int(currentNumberTwo) {
                calculatedValue = (floatOldNumber * 10) + floatCurrentNumber
            }
        }
        didSet {
            currentNumberTwo = String(calculatedValue)
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
    }
    
    var decimalPressed: Bool = false
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue  = sender.currentTitle {
            if numValue == "." {
                decimalPressed = true
            } else if decimalPressed == true {
                currentNumberTwo = numValue
                displayLabel.text = currentNumber + "." + currentNumberTwo
            } else {
                currentNumber = numValue
                displayLabel.text = currentNumber
            }
        }
    }
}

