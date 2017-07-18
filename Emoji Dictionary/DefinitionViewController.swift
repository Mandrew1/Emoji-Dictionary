//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Stephen Carras on 7/18/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.emojiSymbol
        birthYearLabel.text = emoji.birthYear
        categoryLabel.text = emoji.category
        defLabel.text = emoji.defininition
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    

}
