//
//  MainTabView.swift
//  FinPlanner
//
//  Created by Roman on 03/01/2026.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPage: TabPage = .main
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                ContentView()
                    .tag(TabPage.main)
                PaymentsView()
                    .tag(TabPage.paymentList)
            }
            HStack(spacing: 62) {
                TabItem(selected: $selectionPage, image: "house", text: "Main", pageType: .main)
                TabItem(selected: $selectionPage, image: "list.bullet.rectangle.portrait", text: "Payment", pageType: .paymentList)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 20)
            .padding(.bottom, 1)
        }
    }
}

#Preview {
    MainTabView()
}


struct TabItem: View {
    @Binding var selected: TabPage
    var image: String
    var text: String
    var pageType: TabPage
    var body: some View {
        Button {
            selected = pageType
        } label: {
                VStack {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text(text)
                        .cygre(.light, 10)
                }
                .frame(width: 40)
                .foregroundStyle(pageType == selected ? .appBlack : .appYellow)
                .padding(.horizontal, 17)
                .padding(.vertical, 6)
                .background(pageType == selected ? .appYellow : .appBlack)
                .clipShape(RoundedRectangle(cornerRadius: 35))
        }
    }
}
