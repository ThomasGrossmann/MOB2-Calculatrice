//
//  CalculatorModel.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import Foundation

struct CalculatorModel {
    private struct IntermediateOperation: Equatable {
        let firstNumber: Decimal
        let operation: Operation
        
        func calculate(with secondNumber: Decimal) -> Decimal {
            switch operation {
            case .addition:
                return firstNumber + secondNumber
            case .subtraction:
                return firstNumber - secondNumber
            case .multiplication:
                return firstNumber * secondNumber
            case .division:
                return firstNumber / secondNumber
            }
        }
    }
    
    private var newNumber: Decimal?
    private var number: Decimal? {
        return newNumber ?? expression?.firstNumber ?? result
    }
    private var expression: IntermediateOperation?
    private var result: Decimal?
    var resultText: String {
        return getNumberString(forNumber: number, withCommas: true)
    }
    
    mutating func setNumber(number: Number) {
        guard canAddNumber(number) else { return }
        let numberString = getNumberString(forNumber: newNumber)
        newNumber = Decimal(string: numberString.appending(number.description))
    }
    
    mutating func setOperation(operation: Operation) {
        guard let number = number else { return }
        expression = IntermediateOperation(firstNumber: number, operation: operation)
        newNumber = nil
    }
    
    mutating func calculate() {
        guard let expression = expression, let number = number else { return }
        result = expression.calculate(with: number)
        self.expression = nil
        newNumber = nil
    }
    
    mutating func toggleSign() {
        guard let number = number else { return }
        newNumber = number * -1
    }
    
    mutating func setPercentage() {
        guard let number = number else { return }
        newNumber = number / 100
    }
    
    mutating func setDecimal() {
        guard let number = number else { return }
        let numberString = getNumberString(forNumber: number)
        newNumber = Decimal(string: numberString.appending("."))
    }
    
    mutating func clear() {
        newNumber = nil
    }
    
    mutating func clearAll() {
        newNumber = nil
        expression = nil
        result = nil
    }
    
    private func getNumberString(forNumber number: Decimal?, withCommas: Bool = false) -> String {
        return (withCommas ? number?.formatted(.number) : number.map(String.init)) ?? "0"
    }
    
    private func canAddNumber(_ digit: Number) -> Bool {
        guard let number = newNumber else { return true }
        let numberString = getNumberString(forNumber: number)
        let maxDigits = 9
        
        return numberString.count < maxDigits
    }
}
