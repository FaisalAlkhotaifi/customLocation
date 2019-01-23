//
//  ViewController.swift
//  TechCampusLocations
//
//  Created by TechCampus on 1/13/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    //MARK: view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        //get specific location KSA
        let camera = GMSCameraPosition.camera(withLatitude: 23.8859, longitude: 45.0792, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        self.view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 23.8859, longitude: 45.0792)
        marker.title = "Saudi Arabia"
        marker.snippet = "Hello"
        marker.icon = UIImage(named: "location-pointer")
        marker.map = mapView
    }
}
