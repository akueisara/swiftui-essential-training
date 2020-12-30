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
			ZStack {
				Image("Surf Board")
					.resizable()
					.scaledToFit()
				Text("Huli Pizza Company")
					.font(.title)
			}
			
			Text("Order Pizza")
				.font(.largeTitle)
			Text(pizzas > 5 ? "Helloo Pizza!!!!" : "Hello World")
			Spacer()
			HStack(alignment: .top, spacing:15) {
				Image("1_100w")
				Text("Huli Chicken Pizza")
				Spacer()
			}
			Text("Your Order")
			HStack(alignment: .firstTextBaseline) {
				Text("Your order item here")
				Spacer()
				Text("$0.00")
			}
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
