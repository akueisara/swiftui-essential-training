//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct HistoryRowView: View {
	var historyItem: HistoryItem
    var body: some View {
		HStack(alignment: .center) {
			Image("\(historyItem.id)_100w")
				.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
				.shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
			Text(historyItem.name)
				.font(.title)
			Spacer()
		}.overlay(
			Image(systemName: "chevron.right.square")
				.padding()
				.font(.title)
				.foregroundColor(Color("G3"))
			, alignment: .trailing
		)
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
		HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
