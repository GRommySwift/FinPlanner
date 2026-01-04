//
//  PaymentsView.swift
//  FinPlanner
//
//  Created by Roman on 05/01/2026.
//

import SwiftUI

struct PaymentsView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "8 952", title: "Sum of debts", date: "3 January", pageType: .paymentList), action: {
                //
            })
                .zIndex(1)
            ScrollView {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 19) {
                            PaymentCard()
                            PaymentCard()
                    }
                    .padding(.top, 130)
                    .padding(.bottom, 70)
                }
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
    }
}
