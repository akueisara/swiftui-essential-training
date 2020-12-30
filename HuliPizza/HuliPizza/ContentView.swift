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
			Text("Huli Pizza Company")
			Image("Surf Board")
			Text("Order Pizza")
			Text(pizzas > 5 ? "Helloo Pizza!!!!" : "Hello World")
			Spacer()
		}
			
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(pizzas: 5)
		ContentView(pizzas: 6)
    }
}
