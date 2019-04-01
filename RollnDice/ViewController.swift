//
//  ViewController.swift
//  RollnDice
//
//  Created by Abhishek on 23/09/18.
//  Copyright © 2018 Abhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int=0
    var randomDiceIndex2: Int=0
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceView1: UIImageView!
    
    @IBOutlet weak var diceView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
          updateDice()
    }

    @IBAction func buttonClicked(_ sender: Any) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
    
        diceView1.image=UIImage(named: diceArray[randomDiceIndex1])
        diceView2.image=UIImage(named: diceArray[randomDiceIndex2])
    }
    func updateDice(){        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceView1.image=UIImage(named: diceArray[randomDiceIndex1])
        diceView2.image=UIImage(named: diceArray[randomDiceIndex2])

        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
}

