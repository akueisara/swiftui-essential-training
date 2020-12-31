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
			SelectedImageView(image: "1_250w")
				.padding(5)
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
