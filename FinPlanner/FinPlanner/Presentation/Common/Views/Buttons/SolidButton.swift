//
//  SolidButton.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct SolidButton: View {
    var text: String
    var solidColor: Color
    var textColor: Color
    var isFull: Bool = false
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                .cygre(.regular, 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isFull ? .appBlack : textColor)
                .background(isFull ? solidColor : .appBlack)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
        }
    }
}
