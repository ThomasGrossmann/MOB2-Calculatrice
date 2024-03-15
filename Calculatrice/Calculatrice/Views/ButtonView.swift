//
//  ButtonView.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var buttonViewModel: ButtonViewModel
    
    var body: some View {
        Button(
            action: {},
            label: {
                Text(buttonViewModel.button.text)
                .padding()
                .foregroundColor(buttonViewModel.button.textColor)
                .font(.system(size: 34))
                .fontWeight(.medium)
                .frame(
                    width: buttonViewModel.button.isWide ? 170 : 80,
                    height: 80)
            }
        )
        .background(buttonViewModel.button.backgroundColor)
        .cornerRadius(50)
    }
}

#Preview {
    ButtonView(
        buttonViewModel: ButtonViewModel(
            button: ButtonModel(
                id: 0, text: "1", textColor: .black, backgroundColor: .secondary)
        )
    )
}
