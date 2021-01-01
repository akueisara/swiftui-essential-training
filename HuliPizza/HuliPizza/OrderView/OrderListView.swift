//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct OrderListView: View {
	var orderModel: OrderModel
    var body: some View {
		VStack {
			ListHeaderView(text: "Your Order")
			List(orderModel.orders) { item in
				OrderRowView(orderItem: item)
			}
		}
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
		OrderListView(orderModel: OrderModel())
    }
}
