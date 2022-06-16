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
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .onAppear{
                viewModel.checkIfLocationServiciceIsEnabled()
            }
    
    }
}
struct ContentView_Previews: PreviewProvider{
    static var previews: some View {MapView()
        
    }
    
}
final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.2271, longitude: 80.8431),
                                                                                  span: MKCoordinateSpan(latitudeDelta: 0.30, longitudeDelta: 0.30))
    var locationManager: CLLocationManager?
    
    func checkIfLocationServiciceIsEnabled(){
        if CLLocationManager.locationServicesEnabled(){
            locationManager = CLLocationManager()
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            locationManager?.delegate = self

        } else {
            print("Your location is currently not enabaled. Please enable in order to show the availabilty of services in your area.")
        }
        
    }
    private func checkLocationAuthorization(){
        guard let locationMangager = locationManager else {return}
        
        switch locationManager?.authorizationStatus{
            
        case .notDetermined, .none:
            locationMangager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted likely due to parental controls.")
        case .denied:
            print("Location denied. Go into setting to change app permissions.")
        case . authorizedAlways,. authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationMangager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        
        @unknown default:
            break
            
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
}
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


