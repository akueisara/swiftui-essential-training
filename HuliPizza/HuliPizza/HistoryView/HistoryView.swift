//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct HistoryView: View {
	@State var imageID: Int = 0
    var body: some View {
		VStack {
//			ContentHeadeView()
			PageTitleView(title: "Pizza History")
			SelectedImageView(image: "\(imageID)_250w")
				.padding(5)
			HistoryListView(imageID: $imageID)
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
