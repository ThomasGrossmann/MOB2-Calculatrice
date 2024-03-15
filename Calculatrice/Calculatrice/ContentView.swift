//
//  ContentView.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import SwiftUI

struct ContentView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let buttons = [
        [
            ButtonModel(id: 0, text: "AC", textColor: .black, backgroundColor: Color(.lightGray)),
            ButtonModel(id: 1, text: "+/-", textColor: .black, backgroundColor: Color(.lightGray)),
            ButtonModel(id: 2, text: "%", textColor: .black, backgroundColor: Color(.lightGray)),
            ButtonModel(id: 3, text: "/", textColor: .white, backgroundColor: .orange),
        ],
        [
            ButtonModel(id: 4, text: "7", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 5, text: "8", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 6, text: "9", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 7, text: "x", textColor: .white, backgroundColor: .orange),
        ],
        [
            ButtonModel(id: 8, text: "4", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 9, text: "5", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 10, text: "6", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 11, text: "-", textColor: .white, backgroundColor: .orange),
        ],
        [
            ButtonModel(id: 12, text: "1", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 13, text: "2", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 14, text: "3", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 15, text: "+", textColor: .white, backgroundColor: .orange),
        ],
        [
            ButtonModel(id: 16, text: "0", textColor: .white, backgroundColor: .gray, isWide: true),
            ButtonModel(id: 17, text: ",", textColor: .white, backgroundColor: .gray),
            ButtonModel(id: 18, text: "=", textColor: .white, backgroundColor: .orange),
        ]
    ]
    
    var body: some View {
        VStack(
            spacing: 12,
            content: {
                Spacer()
                
                Text("0")
                    .font(.system(size: 72))
                    .foregroundColor(.white)
                    .frame(
                        width: screenWidth,
                        height: screenHeight / 4,
                        alignment: .trailing
                    )
                    .padding(.trailing, 20)
                
                ForEach (0..<buttons.count) { row in
                    HStack(
                        spacing: 14,
                        content: {
                            ForEach (0..<self.buttons[row].count) { column in
                                ButtonView(buttonViewModel: ButtonViewModel(button: self.buttons[row][column]))
                            }
                        }
                    )
                }
            }
        )
        .padding(.bottom, 20)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}
