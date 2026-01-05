//
//  DetailsView.swift
//  FinPlanner
//
//  Created by Roman on 05/01/2026.
//

import SwiftUI

struct DetailsView: View {
    @State var isNotificationSelected: Bool = false
    var body: some View {
        VStack(alignment: .leading)  {
            header
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: -8)  {
                    Text("$ 780")
                        .cygre(.black, 27)
                        .foregroundStyle(.appGray)
                    Text("loan for an iPhone")
                        .cygre(.black, 16)
                        .foregroundStyle(.appYellow)
                }
                .padding(.vertical, 20)
                VStack(alignment: .leading, spacing: 26) {
                    VStack(alignment: .leading, spacing: 17)  {
                        HStack {
                            InfoTagView(text: "$ 100")
                            InfoTagView(text: "$ 500")
                        }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, urna quis tincidunt luctus, elit ipsum ullamcorper elit, vitae ultricies elit ipsum quis urna.")
                            .cygre(.regular, 17)
                            .foregroundStyle(.appMint)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Divider()
                            .background(.appGray)
                        
                        HStack {
                            Text("Next payment")
                                .cygre(.regular, 14)
                                .foregroundStyle(.appYellow)
                                .offset(y: -3)
                            Spacer()
                            HStack(spacing: 4) {
                                Text("paid at")
                                    .cygre(.regular, 12)
                                Text("13.12")
                                    .cygre(.black, 12)
                            }
                            .padding(.horizontal, 10)
                            .padding(.bottom, 4)
                            .background(.appYellow)
                            .clipShape(Capsule())
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .background(.appGray)
                        
                        HStack {
                            Text("Notification about payment")
                                .cygre(.regular, 14)
                                .foregroundStyle(.appYellow)
                                .offset(y: -3)
                            Spacer()
                            RadioButtonView(isSelected: $isNotificationSelected)
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
            
            Spacer()
            VStack(alignment: .leading, spacing: 18)  {
                SolidButton(text: "Full pay", solidColor: .appYellow, textColor: .appBlack, isFull: true)
                SolidButton(text: "Delete last payment", solidColor: .appYellow, textColor: .appYellow)
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
