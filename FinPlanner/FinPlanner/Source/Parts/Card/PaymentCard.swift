//
//  PaymentCard.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct PaymentCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Debt by card")
                            .cygre(.black, 24)
                            
                        HStack(spacing: 5) {
                            Text("$ 8753")
                                .cygre(.black, 12)
                            Text("/ remaining")
                                .cygre(.regular, 12)
                        }
                    }
                    Text("This is a description of the card")
                        .cygre(.regular, 14)
                }
                
                HStack {
                    HStack(spacing: 5) {
                        Text("$ 297")
                            .cygre(.black, 18)
                        Text("/ Mouth")
                            .cygre(.regular, 18)
                    }
                    Spacer()
                    HStack(spacing: 5) {
                        Text("Pay until")
                            .cygre(.light, 12)
                        Text("15.01")
                            .cygre(.black, 12)
                    }
                    .padding(.horizontal, 11)
                    .padding(.bottom, 4)
                    .background(.appBlack)
                    .foregroundStyle(.appGray)
                    .clipShape(Capsule())
                }
            }
            HStack {
               FullButton()
               SolidButton()
            }
        }
        .padding(.horizontal, 12)
        .padding(.top, 10)
        .padding(.bottom, 20)
        .background(.appRed)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
