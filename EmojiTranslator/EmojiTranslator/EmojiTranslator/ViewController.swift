/*

PURPOSE:   Simple emoji translator (specfically 4 emojis: Alien Monster, Ghost,
           Nerd, and Robot). When clicking on the respective emoji icon the app
           will display the meaning of the emoji.
 
RESOURCES: APPCODA - Textbook written by Simon Ng - Beginning iOS 13 Programming
           with Swift (Chapter 3 - Hello World! Build Your First App in
           Swift).
 
DATE:      07/31/2020
 
 
 
 
 -Yair Camacho
 
*/









//
//  ViewController.swift
//  EmojiTranslator
//
//  Created by Yair Camacho on 7/31/20.
//  Copyright © 2020 Yair Camacho. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showMessage(sender: UIButton)
    {
        let emojiDict = ["👻": "Ghost",
                         "🤖": "Robot",
                         "😤": "Angry",
                         "🤓": "Nerdy",
                         "👾": "Alien Monster"]
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text
        {
            let meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
    }
    


}
