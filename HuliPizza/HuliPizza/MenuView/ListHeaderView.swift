//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct ListHeaderView: View {
	var text: String
	var body: some View {
		HStack {
			Text(text)
				.padding(.leading, 5)
			Spacer()
		}
	}
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
		ListHeaderView(text: "Menu")
    }
}
