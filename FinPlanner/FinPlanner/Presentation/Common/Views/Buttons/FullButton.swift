//
//  FullButton.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct FullButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Pay")
                .cygre(.light, 12)
                .foregroundStyle(.appGray)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(.appBlack)
                .clipShape(.capsule)
        }
    }
}
