//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct OrderRowView: View {
	var orderItem: OrderItem
	var body: some View {
		VStack {
			HStack(alignment: .firstTextBaseline) {
				Image(systemName: "\(orderItem.id).sqaure")
				Text(orderItem.description)
					.font(.headline)
				Spacer()
				Text(orderItem.formattedExtendedPrice)
					.bold()
			}
			Text(orderItem.comments)
		}
	}
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
		OrderRowView(orderItem: testOrderItem)
			.environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
