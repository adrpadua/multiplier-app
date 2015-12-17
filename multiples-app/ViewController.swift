//
//  ViewController.swift
//  multiples-app
//
//  Created by Adrian Padua on 12/16/15.
//  Copyright © 2015 Adrian Padua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var theNumber = 0
    var increment = 0
    var sum = 0
    
    // menu images
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    // game images
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func playButtonPressed(sender: UIButton) {
        
        if textField.text != nil  && textField.text != "" {
            theNumber = Int(textField.text!)!
            print(theNumber)
            sum = theNumber
            switchViews()
            refreshDisplay()
        } else {
            textField.placeholder = "BAD INPUT"
        }
        
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        increment += theNumber
        sum = increment + theNumber
        refreshDisplay()
    }
    
    func switchViews() {
        textField.hidden = true
        playButton.hidden = true
        logo.hidden = true
        
        display.hidden = false
        addButton.hidden = false
    }
    
    func refreshDisplay() {
        display.text = "\(increment) + \(theNumber) = \(sum)"
    }
    
}

