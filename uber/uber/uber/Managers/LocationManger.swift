//
//  LocationManger.swift
//  uber
//
//  Created by Aryan Singh on 9/25/23.
//
import CoreLocation

class LocationManager: NSObject, ObservableObject{
    private let locationManager = CLLocationManager()
        
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest//gives the best location for our user
        locationManager.requestWhenInUseAuthorization()//used to bring popup which asks whether user wants to share location
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else{return}
        locationManager.stopUpdatingLocation()
    }
}
