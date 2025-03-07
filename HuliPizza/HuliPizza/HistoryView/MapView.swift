//
//  MapView.swift
//  HuliPizza
//
//  Created by Kuei-Jung Hu on 2021/01/01.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
	var latitude: Double
	var longitude: Double
	var regionRadius: Double
	
	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
		uiView.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
		let annotation = MKPointAnnotation()
		annotation.coordinate = coordinate
		uiView.addAnnotation(annotation)
	}
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
