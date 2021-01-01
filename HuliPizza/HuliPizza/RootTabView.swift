//
//  RootTabView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2021/01/01.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
		TabView {
			ContentView(orderModel: OrderModel(), pizzas: 6)
				.tabItem {
					Image(systemName: "cart")
					Text("Order")
				}
			HistoryView()
				.tabItem {
					Image(systemName: "book")
					Text("History")
				}
		}
		.accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
			.environmentObject(UserPreferences())
    }
}
