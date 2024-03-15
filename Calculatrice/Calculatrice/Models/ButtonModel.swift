//
//  ButtonModel.swift
//  Calculatrice
//
//  Created by Thomas Grossmann on 15.03.2024.
//

import Foundation
import SwiftUI

struct ButtonModel: Identifiable {
    var id: Int
    var text: String
    var textColor: Color
    var backgroundColor: Color
    var isWide: Bool = false
}
