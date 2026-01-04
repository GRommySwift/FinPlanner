//
//  DetailsView.swift
//  FinPlanner
//
//  Created by Roman on 05/01/2026.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(alignment: .leading)  {
            header
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading)  {
                    Text("$ 780")
                    Text("loan for an iPhone")
                }
            }
            Spacer()
            VStack(alignment: .leading)  {
                
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
    }
}

#Preview {
    DetailsView()
}

extension DetailsView {
    var header: some View {
        HStack {
            Button {
                //
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }
            Spacer()
            Text("Details of payment")
                .cygre(.black, 18)
                .foregroundStyle(.appYellow)
            Spacer()
            Button {
                //
            } label: {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }
        }
    }
}
