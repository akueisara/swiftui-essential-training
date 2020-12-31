//
//  ContentView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/30.
//

import SwiftUI

struct ContentView: View {
	var pizzas: Int
    var body: some View {
		print("hi")
		return VStack {
			Text(pizzas > 5 ? "Helloo Pizza!!!!" : "Hello World")
			ContentHeadeView()
				.layoutPriority(2)
			PageTitleView(title: "Order Pizza")
			MenuListView()
				.layoutPriority(1)
			OrderListView()
				.layoutPriority(1)
			Spacer()
		}
		.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			ContentView(pizzas: 5)
			ContentView(pizzas: 6)
				.colorScheme(.dark)
				.background(Color.black)
				.previewDevice("iPad Pro (9.7-inch)")
		}
    }
}
