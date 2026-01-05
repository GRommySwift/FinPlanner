//
//  FullButton.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct FullButton: View {
    var text: String
    var fillColor: Color
    var textColor: Color
    var body: some View {
        Button {
          //
        } label: {
            Text(text)
                .cygre(.regular, 12)
                .foregroundStyle(textColor)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .clipShape(.capsule)
        }
    }
}
