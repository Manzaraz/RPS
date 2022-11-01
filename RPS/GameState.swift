//
//  GameState.swift
//  RPS
//
//  Created by Christian Manzaraz on 31/10/2022.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won! 🥳"
        case .lose:
            return "You Lost! 🙃"
        case .draw:
            return "It's a Draw! 🙏🏼"
        }
    }
}

