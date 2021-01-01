//
//  QuantityStepperView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2021/01/01.
//

import SwiftUI

struct QuantityStepperView: View {
	@Binding var quantity: Int
	var body: some View {
		Stepper(value: $quantity, in: 1...10) {
			Text("Quantity: \(quantity)")
				.bold()
		}
		.padding()
	}
}

struct QuantityStepperView_Previews: PreviewProvider {
    static var previews: some View {
		QuantityStepperView(quantity: .constant(3))
    }
}
