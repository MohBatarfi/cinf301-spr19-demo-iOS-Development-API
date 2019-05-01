//
//  DetailViewController.swift
//  Web_Apps_Demo
//
//  Copyright © 2019 Mohammed Batarfi. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {


    
    @IBOutlet weak var mapView: MKMapView!
    
    var selectedLocation : LocationModel?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Create coordinates from location lat/long
        var poiCoodinates: CLLocationCoordinate2D = CLLocationCoordinate2D()
        
        poiCoodinates.latitude = CDouble(self.selectedLocation!.latitude!)!
        poiCoodinates.longitude = CDouble(self.selectedLocation!.longitude!)!
        // Zoom to region
        let viewRegion: MKCoordinateRegion = MKCoordinateRegion(center: poiCoodinates, latitudinalMeters: 750, longitudinalMeters: 750)
        self.mapView.setRegion(viewRegion, animated: true)
        // Plot pin
        let pin: MKPointAnnotation = MKPointAnnotation()
        pin.coordinate = poiCoodinates
        self.mapView.addAnnotation(pin)
        
        //add title to the pin
        pin.title = selectedLocation!.name
        
    }

}
