//
//  AddView.swift
//  FinPlanner
//
//  Created by Roman on 05/01/2026.
//

import SwiftUI

struct AddView: View {
    @State var nameText: String = ""
    @State var isNotificationSelected: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 27) {
            VStack(alignment: .leading, spacing: 25) {
                VStack(spacing: 25) {
                    Text("Add new payment")
                        .cygre(.black, 18)
                        .foregroundStyle(.appYellow)
                    HStack(spacing: 23) {
                        SolidButton(text: "Every mouth", solidColor: .appYellow, textColor: .appBlack, isFull: true)
                        SolidButton(text: "Every mouth", solidColor: .appYellow, textColor: .appYellow, isFull: false)
                    }
                }
                HStack(spacing: 4) {
                    Text("On the")
                        .cygre(.light, 14)
                        .foregroundStyle(.appMint)
                    Button {
                        //
                    } label: {
                        Text("20")
                            .cygre(.black, 16)
                            .foregroundStyle(.appMint)
                            .underline()
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 12) {
                FieldView(placeHolder: "Name of payment", text: $nameText)
                HStack(spacing: 10) {
                    FieldView(placeHolder: "Full sum", text: $nameText)
                    FieldView(placeHolder: "Mouthly payment", text: $nameText)
                }
                FieldView(placeHolder: "Information", text: $nameText, isTextField: false)
            }
            
            
            HStack {
                Text("Notification about payment")
                    .cygre(.regular, 14)
                    .foregroundStyle(.appYellow)
                    .offset(y: -3)
                Spacer()
                RadioButtonView(isSelected: $isNotificationSelected)
            }
            .padding(.horizontal, 10)
            
            
            Spacer()
            FullButton(text: "Add", fillColor: .appYellow, textColor: .appBlack)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .background(.appBlack)
    }
}

#Preview {
    AddView()
}

struct FieldView: View {
    var placeHolder: String
    @Binding var text: String
    var isTextField: Bool = true
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(placeHolder)
                .cygre(.light, 14)
                .foregroundStyle(.white)
            if isTextField {
                TextField("", text: $text)
                    .frame(height: 48)
                    .padding(.horizontal, 10)
                    .background(.appGray)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.appGray, lineWidth: 1)
                    }
            } else {
                TextEditor(text: $text)
                    .frame(height: 154)
                    .padding(.horizontal, 10)
                    .background(.appGray)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.appGray, lineWidth: 1)
                    }
            }
        }
    }
}
