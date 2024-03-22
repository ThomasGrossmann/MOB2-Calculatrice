//
//  ButtonsPad.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 22.03.2024.
//

import SwiftUI

extension CalculatorView {
    struct ButtonsPad: View {
        @EnvironmentObject private var calculatorViewModel: CalculatorViewModel
        
        var body: some View {
            VStack {
                ForEach(calculatorViewModel.buttonTypes, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            CalculatorButton(button: button)
                        }
                    }
                }
            }
        }
    }
}
