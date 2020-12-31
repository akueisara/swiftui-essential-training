//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2020/12/31.
//

import SwiftUI

struct MenuRowView: View {
	var body: some View {
		HStack(alignment: .center, spacing: 15) {
			Image("1_100w")
//				.cornerRadius(10)
//				.border(Color("G4"), width: 2)
				.clipShape(Capsule())
				.shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
			VStack(alignment: .leading) {
				Text("Huli Chicken Pizza")
					.font(.title3)
					.fontWeight(.light)
					.lineLimit(2)
					.truncationMode(.tail)
				RatingsView()
					.padding(.top, 8)
			}
//			Spacer()
		}
	}
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}


