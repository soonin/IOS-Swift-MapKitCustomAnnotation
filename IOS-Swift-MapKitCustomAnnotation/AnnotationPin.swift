//
//  AnnotationPin.swift
//  IOS-Swift-MapKitCustomAnnotation
//
//  Created by Pooya Hatami on 2018-04-06.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import MapKit

class AnnotationPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String , subtitle:String , coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
