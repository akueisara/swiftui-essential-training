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
				MenuRowView(menuItem: item)
					.listRowInsets(EdgeInsets())
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




