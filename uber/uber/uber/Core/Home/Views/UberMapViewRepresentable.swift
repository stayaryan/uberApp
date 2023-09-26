//
//  UberMapViewRepresentable.swift
//  uber
//
//  Created by Aryan Singh on 9/21/23.
//

//allows us to create a view in UIKit and represent it in SwiftUI

import SwiftUI
import MapKit
struct UberMapViewRepresentable : UIViewRepresentable{
    let mapView = MKMapView()
    let locationManager = LocationManager()
    //create functions to modify mapView
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    //in charge of updating the view (map) depending on what user does. So if he drops a pin we should zoom out and show a route
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension UberMapViewRepresentable{
    
    class MapCoordinator : NSObject, MKMapViewDelegate{
        let parent: UberMapViewRepresentable
        
        init(parent: UberMapViewRepresentable){
            self.parent = parent
            super.init()
        }
        //mapView is a delegate method which tells the delegate that location of the user was updated
        //a delegate method is a method which calls an object to update itself.
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            
            parent.mapView.setRegion(region, animated: true)
        }
    }
}
