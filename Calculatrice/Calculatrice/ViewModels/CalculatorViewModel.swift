//
//  CalculatorViewModel.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import Foundation

class CalculatorViewModel: ObservableObject {
    @Published private var calculator = CalculatorModel()
    
    var resultText: String {
        return calculator.resultText
    }
    var buttonTypes: [[ButtonType]] {
        [
            [.clearAll, .changeSign, .percent, .operation(.division)],
            [.number(.seven), .number(.eight), .number(.nine), .operation(.multiplication)],
            [.number(.four), .number(.five), .number(.six), .operation(.subtraction)],
            [.number(.one), .number(.two), .number(.three), .operation(.addition)],
            [.number(.zero), .decimal, .equal]
        ]
    }
    
    func action(for button: ButtonType) {
        switch button {
        case .number(let number):
            calculator.setNumber(number: number)
        case .operation(let operation):
            calculator.setOperation(operation: operation)
        case .changeSign:
            calculator.toggleSign()
        case .percent:
            calculator.setPercentage()
        case .decimal:
            calculator.setDecimal()
        case .equal:
            calculator.calculate()
        case .clearAll:
            calculator.clearAll()
        case .clear:
            calculator.clear()
        }
    }
}
