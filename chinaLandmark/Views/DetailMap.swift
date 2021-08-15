//
//  MainPageMap.swift
//  chinaLandmark
//
//  Created by tcyeee on 2021/8/13.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    let center = CLLocationCoordinate2D(
        latitude: 39.9087243,
        longitude: 116.3952859
    )
    
    let span = MKCoordinateSpan(
        latitudeDelta: 0.02,
        longitudeDelta: 0.02
    )
    
    func makeUIView(context: Context) ->  MKMapView { MKMapView() }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.setRegion(
            MKCoordinateRegion(center: center, span: span),
            animated: true
        )
    }
}




struct MainPageMap_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
