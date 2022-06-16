//
//  MapViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.2271, longitude: 80.8431),
                                                                                  span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .ignoresSafeArea()
    
    }
}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View {MapView()
        
    }
    
}
final class MapViewModel: ObservableObject {
    
    var locationManager: CLLocationManager
    
}
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


