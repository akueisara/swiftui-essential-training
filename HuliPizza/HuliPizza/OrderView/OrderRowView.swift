//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct OrderRowView: View {
	var body: some View {
		HStack(alignment: .firstTextBaseline) {
			Text("Your order item here")
			Spacer()
			Text("$0.00")
		}
	}
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
    }
}
