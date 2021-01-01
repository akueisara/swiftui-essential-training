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
		HStack(alignment: .firstTextBaseline) {
			Text(orderItem.description)
				.font(.headline)
			Spacer()
			Text(orderItem.formattedExtendedPrice)
				.bold()
		}
	}
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
		OrderRowView(orderItem: testOrderItem)
			.environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
