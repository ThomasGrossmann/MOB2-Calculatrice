//
//  CalculatorButton.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 19.03.2024.
//

import SwiftUI

extension CalculatorView {
    struct CalculatorButton: View {
        let button: ButtonType
        @EnvironmentObject private var calculatorViewModel: CalculatorViewModel
        
        var body: some View {
            Button(button.description) {
                calculatorViewModel.action(for: button)
            }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: button.backgroundColor,
                    foregroundColor: button.foregroundColor,
                    isWide: button == .number(.zero)
                )
            )
        }
        
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
    }
}
