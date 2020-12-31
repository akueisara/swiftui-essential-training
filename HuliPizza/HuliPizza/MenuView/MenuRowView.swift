//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct MenuRowView: View {
	var body: some View {
		HStack(alignment: .top, spacing: 15) {
			Image("1_100w")
			VStack {
				Text("Huli Chicken Pizza")
					.font(.title)
					.fontWeight(.light)
				RatingsView()
			}
//			Spacer()
		}
	}
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}


