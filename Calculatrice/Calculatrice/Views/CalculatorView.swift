//
//  ContentView.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import SwiftUI

struct CalculatorView: View {
    @EnvironmentObject private var calculatorViewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            Spacer()
            ResultText()
            ButtonsPad()
        }
        .padding(Constants.padding)
        .background(.black)
    }
}
