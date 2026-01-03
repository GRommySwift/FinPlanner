//
//  SolidButton.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct SolidButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("More information")
                .cygre(.light, 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.appBlack)
                .overlay {
                    Capsule()
                        .stroke(.appBlack, lineWidth: 1)
                }
        }
    }
}
