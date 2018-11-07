//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //outlet button changing the state
    @IBOutlet weak var cardChoice1: UIButton!
    @IBOutlet weak var cardChoice2: UIButton!
    @IBOutlet weak var cardChoice3: UIButton!
    @IBOutlet weak var outComeDescription: UILabel!
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var usableCards: UIButton!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  restartGame(restart)
    
    
    
  }

    
    //actions
    
    @IBAction func flip(_ sender: UIButton) {
        
        var images = [UIImage(named: "kingCard")!,
                      UIImage(named: "threeCard")!, UIImage(named: "threeCard")!]
            images = images.shuffled()
        
    
        
        switch sender.tag {
        case 0:
           //checking to see if the value is the king card
            if images[0] == UIImage(named: "kingCard")!{
                cardChoice1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                outComeDescription.text = "   Cograts you Won! 🎉 "
                cardChoice2.isEnabled = false
                cardChoice3.isEnabled = false
//                restartGame(restart)
                
            } else {
                cardChoice1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                outComeDescription.text = "  Sorry Try again 🤷🏽‍♂️  "
//                restartGame(restart)
                
                //find out which card choice has the king and flip it
            }
            
            //if it is the 3 of diamonds do some work
        case 1:
            if images[1] == UIImage(named: "kingCard")!{
                cardChoice2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                outComeDescription.text = "   Cograts you Won! 🎉 "
                cardChoice1.isEnabled = false
                cardChoice3.isEnabled = false
//             restartGame(restart)
                
            } else {
                cardChoice2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                outComeDescription.text = "  Sorry Try again 🤷🏽‍♂️  "
//                restartGame(restart)
               
                //find out which card choice has the king and flip it
            }
            
            //if it is the 3 of diamonds do some work
           
        case 2:
            if images[2] == UIImage(named: "kingCard")!{
                cardChoice3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                outComeDescription.text = "   Cograts you Won! 🎉 "
                cardChoice2.isEnabled = false
                cardChoice1.isEnabled = false
//                restartGame(restart)
               
            } else {
                cardChoice3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                outComeDescription.text = "  Sorry Try again 🤷🏽‍♂️  "
//               restartGame(restart)
                //find out which card choice has the king and flip it
            }
            
            //if it is the 3 of diamonds do some work
           
        default:
            print("Error")
        }
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        cardChoice1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardChoice2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardChoice3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        outComeDescription.text = "Pick a Card, Any Card 😏😈"
        enableAllCards(usableCards)
        
        
                
        
        
    }
    @IBAction func enableAllCards(_ sender: UIButton){
        cardChoice1.isEnabled = true
        cardChoice2.isEnabled = true
        cardChoice3.isEnabled = true
    }
    
}

