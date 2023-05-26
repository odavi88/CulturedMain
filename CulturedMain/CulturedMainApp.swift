//
//  CulturedMainApp.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/26/23.
//

import SwiftUI
import CoreLocation

@main
struct CulturedApp: App {
    
    @StateObject private var vm = DistrictsViewModel()
    
    var body: some Scene {
        
        WindowGroup {
            NavigationView {
                DistrictsView(viewModel: LocationViewModel(locations: [Location(name: "", services: [""], coordinates: CLLocationCoordinate2D(latitude: 42.3319, longitude:  -83.0466), imageNames: [""], link: "")]))
                    .environmentObject(vm)
            }
        }
    }
}
