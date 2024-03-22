//
//  Operation.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import Foundation

enum Operation: String {
    case addition
    case subtraction
    case multiplication
    case division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
