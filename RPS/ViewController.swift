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
    }

    @IBAction func rockChoosen(_ sender: Any) {
    }
    
    @IBAction func paperChoosen(_ sender: Any) {
    }
    
    @IBAction func scissorsChoosen(_ sender: Any) {
    }
    
    @IBAction func playAgainChoosen(_ sender: Any) {
    }
}

