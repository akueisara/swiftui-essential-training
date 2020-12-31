//
//  ContentHeadeView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct ContentHeadeView: View {
    var body: some View {
		VStack {
			ZStack {
				Image("Surf Board")
					.resizable()
					.scaledToFit()
				Text("Huli Pizza Company")
					.font(Font.custom("Avinir-Black", size: 14))
					.foregroundColor(.white)
			
			}
		}
    }
}

struct ContentHeadeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeadeView()
			.environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}


