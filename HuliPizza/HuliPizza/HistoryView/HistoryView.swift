//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
		VStack {
			ContentHeadeView()
			PageTitleView(title: "Pizza History")
			HistoryListView()
		}
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			HistoryView()
			HistoryView()
				.colorScheme(.dark)
				.background(Color.black)
		}
        
    }
}
