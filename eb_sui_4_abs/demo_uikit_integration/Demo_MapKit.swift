//
//  Demo_UIKit.swift
//  eb_sui_4_abs
//
//  Created by yao on 1/22/20.
//  Copyright © 2020 yao. All rights reserved.
//
import UIKit
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    @Binding var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}




struct Demo_MapKit: View {
    @State private var coord: CLLocationCoordinate2D
    
    init(_ coord: CLLocationCoordinate2D) {
        // self._coord, not self.coord !!!
        self._coord = State(initialValue: coord)
    }
    
    var body: some View {
        MapView(coordinate: self.$coord)
    }
}

let lat: CLLocationDegrees = 40.758896
let lon: CLLocationDegrees = 73.985130

struct Demo_MapKit_Previews: PreviewProvider {
    
    static var previews: some View {
        Demo_MapKit(CLLocationCoordinate2DMake(lat, lon))
    }
}
