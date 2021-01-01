//
//  SizePickerView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2021/01/01.
//

import SwiftUI

struct SizePickerView: View {
	@Binding var size: Size
	let sizes: [Size] = [.small, .medium, .large]
	var body: some View {
		Picker(selection: $size, label: Text("Pizza Size")) {
			ForEach(sizes, id: \.self) { size in
				Text(size.formatted()).tag(size)
			}
		}
		.pickerStyle(SegmentedPickerStyle())
		.font(.headline)
	}
}

struct SizePickerView_Previews: PreviewProvider {
    static var previews: some View {
		SizePickerView(size: .constant(.large))
    }
}
