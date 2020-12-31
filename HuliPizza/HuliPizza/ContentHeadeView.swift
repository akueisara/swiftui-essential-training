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
//					.scaledToFit()
//					.scaledToFill()
//					.frame(height: 100)
					.frame(minWidth: 300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
				Text("Huli Pizza Company")
					.font(Font.custom("Avinir-Black", size: 20))
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


