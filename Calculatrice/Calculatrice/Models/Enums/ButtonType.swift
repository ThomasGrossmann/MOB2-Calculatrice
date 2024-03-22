//
//  ButtonType.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable, CustomStringConvertible {
    case number(_ number: Number)
    case operation(_ operation: Operation)
    case changeSign
    case percent
    case decimal
    case equal
    case clear
    case clearAll
    
    var description: String {
        switch self {
        case .number(let number):
            return number.description
        case .operation(let operation):
            return operation.description
        case .changeSign:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equal:
            return "="
        case .clear:
            return "C"
        case .clearAll:
            return "AC"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .clearAll, .clear, .changeSign, .percent:
            return Color(.lightGray)
        case .operation, .equal:
            return .orange
        case .number, .decimal:
            return .secondary
        }
    }
    
    var foregroundColor: Color {
        switch self {
            case .clearAll, .clear, .changeSign, .percent:
                return .black
            default:
                return .white
        }
    }
}
