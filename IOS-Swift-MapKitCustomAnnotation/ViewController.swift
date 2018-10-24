//
//  ViewController.swift
//  IOS-Swift-MapKitCustomAnnotation
//
//  Created by Pooya Hatami on 2018-04-06.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var pin:AnnotationPin!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        mapView.mapType = .hybrid
        
        let coordinate = CLLocationCoordinate2D(latitude: 49.2768, longitude: -123.1120)
        let regin = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000)
        
        mapView.setRegion(regin, animated: true)
        
        pin = AnnotationPin(title: "BC Place", subtitle: "BC Place is a multi-purpose stadium located at the north side of False Creek, in Vancouver, BC, Canadac", coordinate: coordinate)
        
        mapView.addAnnotation(pin)
    
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: pin, reuseIdentifier: "BCPlacePin")
        annotationView.image = UIImage(named: "flag01")
        let transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        annotationView.transform = transform
        
        return annotationView
    }
    
}

