//
//  Number.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import Foundation

enum Number: Int, CaseIterable, CustomStringConvertible {
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    
    var description: String {
        "\(rawValue)"
    }
}
