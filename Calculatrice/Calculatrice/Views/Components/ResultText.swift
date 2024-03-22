//
//  ResultText.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 22.03.2024.
//

import SwiftUI

extension CalculatorView {
    struct ResultText: View {
        @EnvironmentObject private var calculatorViewModel: CalculatorViewModel

        var body: some View {
            Text(calculatorViewModel.resultText)
                .padding()
                .foregroundColor(.white)
                .frame(
                    maxWidth: .infinity,
                    alignment: .trailing
                )
                .font(.system(size: 78))
                .fontWeight(.light)
                .lineLimit(1)
                .minimumScaleFactor(0.2)
        }
    }
}
