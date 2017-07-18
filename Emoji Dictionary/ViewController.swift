//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Stephen Carras on 7/17/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var emojiArray  : [Emoji] = []

    @IBOutlet weak var tView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tView.dataSource = self
        tView.delegate = self
        emojiArray = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text = emoji.category
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "moveSegway", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        
        let emoji1 = Emoji()
        emoji1.emojiSymbol = "😄"
        emoji1.defininition = "Smiley Face"
        emoji1.category = "Face"
        emoji1.birthYear = "2010"
        
        let emoji2 = Emoji()
        emoji2.emojiSymbol = "😉"
        emoji2.defininition = "Winky Face"
        emoji2.category = "Face"
        emoji2.birthYear = "2010"
        
        let emoji3 = Emoji()
        emoji3.emojiSymbol = "😍"
        emoji3.defininition = "Hearts Face"
        emoji3.category = "Face"
        emoji3.birthYear = "2010"
        
        let emoji4 = Emoji()
        emoji4.emojiSymbol = "👳🏾"
        emoji4.defininition = "Man"
        emoji4.category = "Face"
        emoji4.birthYear = "2010"
        
        let emojiObjArray : [Emoji] = [emoji1, emoji2, emoji3, emoji4]
        
        return emojiObjArray
        
    }

 
}

