//
//  ViewController.swift
//  RPS
//
//  Created by Christian Manzaraz on 31/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var signLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    
    @IBOutlet var rockButton: UIButton!
    @IBOutlet var paperButton: UIButton!
    @IBOutlet var scissorsButton: UIButton!
    
    
    @IBOutlet var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(forState: .start)
    }

    @IBAction func rockChoosen(_ sender: Any) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChoosen(_ sender: Any) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorsChoosen(_ sender: Any) {
        play(userSign: .scissors)
    }
    
    @IBAction func playAgainChoosen(_ sender: Any) {
        updateUI(forState: .start)
    }
    
    func updateUI(forState state: GameState) {
        statusLabel.text = state.status
        
        switch state {
        case .start:
            view.backgroundColor = .gray
            
            signLabel.text = "🤖"
            playAgainButton.isHidden = true
            
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
        case .win:
            view.backgroundColor = UIColor(red: 0.651, green: 0.792, blue: 0.651, alpha: 1)
        case .lose:
            view.backgroundColor = UIColor(red: 0.851, green: 0.424, blue: 0.412, alpha: 1)
        case .draw:
            view.backgroundColor = UIColor(red: 0.663, green: 0.663, blue: 0.663, alpha: 1)
        }
    }
    func play(userSign: Sign) {
        let computerSigh = randomSign()
        
        let gameState = userSign.gameState(against: computerSigh)
        updateUI(forState: gameState)
        
        signLabel.text = computerSigh.emoji
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
    }
    
}

