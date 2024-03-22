//
//  CalculatriceApp.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import SwiftUI

@main
struct CalculatriceApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorViewModel())
        }
    }
}
