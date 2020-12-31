//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct MenuListView: View {
	var menuList = MenuModel().menu
    var body: some View {
		VStack {
			ListHeaderView(text: "Menu")
			List(menuList) { item in
				HStack {
					Spacer()
					MenuRowView()
						.frame(width: 230)
					Text(item.name)
						.multilineTextAlignment(.trailing)
						.frame(minWidth: 50, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: 100)
					Spacer()
				}
			}
		}
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
		MenuListView()
			.colorScheme(.dark)
			.background(Color.black)
			.previewDevice("iPad Pro (9.7-inch)")
    }
}




