//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
		HStack(alignment: .top) {
			Image("1_100w")
			Text("Huli Chicken")
		}
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
