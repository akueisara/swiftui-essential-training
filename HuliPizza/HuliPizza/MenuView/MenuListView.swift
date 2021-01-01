//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct MenuListView: View {
	@Binding var orderModel: OrderModel
	var menuList = MenuModel().menu
    var body: some View {
		VStack {
			ListHeaderView(text: "Menu")
			NavigationView {
				List(menuList) { item in
					NavigationLink(
						destination: MenuDetailView(orderModel: self.$orderModel, menuItem: item)) {
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
		MenuListView(orderModel: .constant(OrderModel()))
    }
}




