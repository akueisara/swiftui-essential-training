//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct MenuRowView: View {
	var menuItem: MenuItem = testMenuItem
	var body: some View {
		VStack(alignment: .leading) {
			HStack(alignment: .center, spacing: 15) {
				Image("\(menuItem.id)_100w")
	//				.cornerRadius(10)
	//				.border(Color("G4"), width: 2)
					.clipShape(Capsule())
					.shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
				VStack(alignment: .leading) {
					Text(menuItem.name)
						.font(.title3)
						.fontWeight(.light)
						.lineLimit(2)
						.truncationMode(.tail)
					RatingsView(count: menuItem.rating)
						.padding(.top, 8)
				}
	//			Spacer()
			}
			Text(menuItem.description)
		}
	}
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
		MenuRowView(menuItem: MenuModel().menu[7])
    }
}


