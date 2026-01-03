//
//  View+Extension.swift
//  FinPlanner
//
//  Created by Roman on 03/01/2026.
//

import SwiftUI

extension View {
    func cygre(_ font: Cygre = .regular, _ size: CGFloat = 14) -> some View {
        self
            .font(.custom(font.rawValue, size: size))
    }
}
