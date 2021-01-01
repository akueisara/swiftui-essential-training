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
			NavigationView {
				List(menuList) { item in
					NavigationLink(
						destination: MenuDetailView(menuItem: item)) {
						MenuRowView(menuItem: item)
							.listRowInsets(EdgeInsets())
					}
				}.navigationTitle("Pizza Order")
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




