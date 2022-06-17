//
//  MapViewController.swift
//  ROE
//
//  Created by Scholar on 6/16/22.
//

import MapKit
import SwiftUI

class MapViewController: UIViewController {
    
    

    private let map: MKMapView = {
       let map = MKMapView()
        return map
        }()
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.addSubview(map)
        
        locationManager.shared.getUserLocation {[weak self] location in
            DispatchQueue.main.async {
                guard let strongSelf = self else {
                    return
                }
                
                let pin = MKPointAnnotation()
                pin.coordinate = location.coordinate
                strongSelf.map.setRegion(MKCoordinateRegion(center: location.coordinate,
                                                            span: MKCoordinateSpan(
                                                                latitudeDelta: 0.7,
                                                                longitudeDelta: 0.7)),
                                                            animated: true)
                strongSelf.map.addAnnotation(pin)
            }
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        map.frame = view.bounds
    }
}

    
    
    


