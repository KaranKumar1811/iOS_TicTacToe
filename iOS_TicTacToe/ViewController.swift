//
//  ViewController.swift
//  iOS_TicTacToe
//
//  Created by MacStudent on 2020-01-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activeGame = true
    
    var activePlayer = 1
    
    var gameState=[0,0,0,0,0,0,0,0,0]
   
    let winningCombination=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
        
        let activePostion = sender.tag - 1
        if gameState[activePostion] == 0 && activeGame {
            gameState[activePostion] = activePlayer
            if activePlayer == 1{
                sender.setImage(UIImage(named: "nought.png"),for: [])
                activePlayer = 2
            }
            else{
                sender.setImage(UIImage(named: "cross.png"),for: [])
                activePlayer = 1
            }
        }
        
        for combination in winningCombination{
            if gameState[combination[0]] != 0 && gameState[combination[1]] == gameState[combination[2]] && gameState[combination[2]] == gameState[combination[0]]
            {
             activeGame = false
                if gameState[combination[0]] == 1 {
                    print("Winner is nought")
                }
                else
                {
                    print("Winner is Cross")
                }
                
            }
        }
        
    }
    
    
    

}

