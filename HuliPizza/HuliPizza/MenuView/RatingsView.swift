//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct RatingsView: View {
	var body: some View {
		HStack {
			ForEach(0..<4) { item in
				Image("Pizza Slice")
			}
		}
	}
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
