//
//  ViewController.swift
//  Dicee
//
//  Created by Justyna Kowalkowska on 30/06/2020.
//  Copyright © 2020 Justyna Kowalkowska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageDice1: UIImageView!
    @IBOutlet weak var imageDice2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollButton.backgroundColor = .clear
        rollButton.layer.cornerRadius = 0.15 * rollButton.bounds.size.width
        rollButton.layer.borderWidth = 1
        rollButton.layer.borderColor = UIColor.white.cgColor
        
        
        
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        imageDice1.image = diceArray.randomElement()
        imageDice2.image = diceArray[Int.random(in: 0...5)]
        
        //Int.random(in: 0...5) is the same as randomElement().
    }
}

