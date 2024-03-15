//
//  ButtonViewModel.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import Foundation
import SwiftUI

class ButtonViewModel: ObservableObject {
    @Published var button: ButtonModel
    
    init(button: ButtonModel) {
        self.button = button
    }
}
