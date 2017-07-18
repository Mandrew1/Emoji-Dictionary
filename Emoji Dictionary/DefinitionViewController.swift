//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Stephen Carras on 7/18/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       print(emoji)
        emojiLabel.text = emoji
        
        if emoji == "😄" {
            defLabel.text = "Smiley Face"
        } else if emoji == "😉" {
            defLabel.text = "Winky Face"
        } else if emoji == "😍" {
            defLabel.text = "Heart Eyes"
        } else if emoji == "👳🏾" {
            defLabel.text = "Man"
        } else {
            return
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
