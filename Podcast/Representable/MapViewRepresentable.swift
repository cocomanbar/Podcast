//
//  MapViewRepresentable.swift
//  Podcast
//
//  Created by tanxl on 2024/6/12.
//

import SwiftUI
import UIKit
import MapKit

struct MapViewRepresentable: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
 
    }
}

#Preview {
    MapViewRepresentable()
}
