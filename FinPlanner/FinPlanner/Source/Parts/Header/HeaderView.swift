//
//  MainHeaderView.swift
//  FinPlanner
//
//  Created by Roman on 03/01/2026.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: -5) {
            HStack {
                Text("8 952 $")
                    .cygre(.black, 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                Spacer()
                Button {
                    //
                } label: {
                    ZStack {
                        Circle()
                            .fill(.appYellow)
                            .frame(width: 25)
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11)
                            .foregroundStyle(.appBlack)
                    }
                }
            }
            VStack(alignment: .leading, spacing: -7) {
                Text("Sum of debts")
                    .cygre(.black, 32)
                Text("3 January")
                    .cygre(.light, 16)
            }
            .foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
}
