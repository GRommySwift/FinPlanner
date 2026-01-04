//
//  MainViewContentHeader.swift
//  FinPlanner
//
//  Created by Roman on 04/01/2026.
//

import SwiftUI

struct MainViewContentHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
               Text("Debts")
                    .cygre(.black, 16)
                    .foregroundStyle(.appYellow)
                Spacer()
                HStack(spacing: 16) {
                    Button {
                        //
                    } label: {
                        Text("Every month")
                            .cygre(.black, 12)
                            .foregroundStyle(.appGray)
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("One time")
                            .cygre(.light, 12)
                            .foregroundStyle(.appGray)
                    }
                }
            }
            
            HStack(spacing: 4) {
                Text("$ 359 /")
                    .cygre(.black, 14)
                Text("Every month")
                    .cygre(.regular, 14)
            }
            .foregroundStyle(.appGray)
        }
    }
}
