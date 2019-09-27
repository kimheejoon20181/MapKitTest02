//
//  ViewController.swift
//  MapKitTest02
//
//  Created by dit08 on 2019. 9. 16..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    var points = [Pngdate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        mapView.mapType = MKMapType.standard
        
        // MapType 설정
         //MKMapView.mapType = MKMapType.satellite
        
        // DIT 위도, 경도 설정 , 35.165005, 129.071484
        let center = CLLocationCoordinate2D(latitude: 35.165005, longitude: 129.071484)
        
        //반경 설정
        //let span = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        //let region = MKCoordinateRegion(center: location, latitudinalMeters: 300, longitudinalMeters: 300)
    
        //region 설정
        //let region = MKCoordinateRegion(center: location, span: span)
        
        // mapView에 add
        //MKMapView.setRegion(region, animated: true)
        
        //핀 꼽기
        //let  anno01  = MKPointAnnotation()
        // anno01.coordinate = location
        //anno01.title = "동의과학대학교"
        //anno01.subtitle = " We Are DIT"
        //MKMapView.addAnnotation(anno01)
        
        let anno01 = Pngdate(coordinate: center, title: "동의과학대학교", subtitle: "꿈")
        points.append(anno01)
        
        let anno02 = Pngdate(coordinate: CLLocationCoordinate2D(latitude: 35.149018, longitude: 129.071484), title: "2번째", subtitle: "푸른 좋은곳")
        points.append(anno02)

        let anno03 = Pngdate(coordinate: CLLocationCoordinate2D(latitude: 35.167783, longitude: 129.070598), title: "3번쨰 장소", subtitle: "바다가 보이는 곳")
        points.append(anno03)

        
        //let  anno02  = MKPointAnnotation()
        //anno02.coordinate.latitude = 35.149018
        //anno02.coordinate.longitude = 129.138488
        //anno02.title = "광안대교"
        //anno02.subtitle = "바다"
        //MKMapView.addAnnotation(anno02)
        
        mapView.showAnnotations(points, animated: true)
        mapView.selectAnnotation(anno01, animated: true)
        
    }

    @IBAction func standardMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelliteMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func hybridMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
    
    
    
}

