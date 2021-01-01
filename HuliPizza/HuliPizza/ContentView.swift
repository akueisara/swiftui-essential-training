//
//  ContentView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/30.
//

import SwiftUI

struct ContentView: View {
	@State var orderModel: OrderModel
	@State var isMenuDisplayed: Bool = true
	var pizzas: Int
    var body: some View {
		print("hi")
		return VStack {
			Text(pizzas > 5 ? "Helloo Pizza!!!!" : "Hello World")
			ContentHeadeView()
				.layoutPriority(2)
			Button(action:{self.isMenuDisplayed.toggle()}) {
				PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
			}
			MenuListView(orderModel: $orderModel)
				.layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
			OrderListView(orderModel: orderModel)
				.layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
//			Spacer()
		}
		.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			ContentView(orderModel: OrderModel(), pizzas: 5)
			ContentView(orderModel: OrderModel(), pizzas: 6)
				.colorScheme(.dark)
				.background(Color.black)
				.previewDevice("iPad Pro (9.7-inch)")
		}
    }
}
