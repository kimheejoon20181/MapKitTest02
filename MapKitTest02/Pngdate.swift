//
//  Pngdate.swift
//  MapKitTest02
//  Created by dit08 on 2019. 9. 27..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit
import MapKit

class Pngdate: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var info: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    
    //func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    
    //   let identifier = "RE"
    // var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)as? MKPinAnnotationView
    
    //   if annotationView == nil {
    //       annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: indentifier)
    //       annotationView!.canShowCallout = true
    //       annotationView?.pinTintColor = UIColor.green
    //       annotationView?.animatesDrop = true
    
    //       let btn = UIButton(type: .detailDisclosure)
    //       annotationView?.rightCalloutAccessoryView = btn
    
    //     let imgV = UIImageView(image: UIImage(named: "DIT.png"))
    //       imgV.frame = CGRect(x:0, y:0, width:40, height:40)
    //   }
    //}
    
}
