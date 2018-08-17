//
//  ViewController.swift
//  Concentration
//
//  Created by dev on 8/16/18.
//  Copyright © 2018 dev. All rights reserved.
//

// UIKit has has all the UI elements like buttons and sliders
import UIKit

//The class ViewController inherits from UIViewController(super class), this class is in UIKit because it starts with UI
// UIViewController knows everything needed to control a UI
class ViewController: UIViewController {
    
    var flipCount:Int = 0 {
        
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
        
    }
    
    //outlet creates an instance variable
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices:[String] = ["😀","👻","🎃","👽"]
    
    //@IBAction is just a directive put by xcode. Action creates a method
    //This method has one argument whose type is UIButton
    //When declaring a new function, an underscore tells Swift that the //parameter should have no label when called.If you want your function to be callable without parameter labels, you use the underscore
    @IBAction func touchCard(_ sender: UIButton) {
       flipCount = flipCount + 1
        
        if let cardNumber = cardButtons.index(of: sender) {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("card number not set")
        }
        
    }
    

    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
      //  print("FlipCard(withEmoji \(emoji))")
        
        //print(flipCount)
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
             button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            
        }
        
    }

}

