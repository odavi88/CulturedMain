//
//  Location.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/26/23.
//

import Foundation
import MapKit
import SwiftUI

#warning("Figure out how to use this Task struct to prepare the dial stuff.")


//class Task {
//    let name: String
//    var completionPercentage: Double
//
//    init(name: String, completionPercentage: Double) {
//        self.name = name
//        self.completionPercentage = completionPercentage
//    }
//}

//protocol DialColorProtocol {
//    var color: Color { get }
//}
//
//
//protocol ProgressProtocol {
//    var percent: Double {get set}
//    // Because we have to use only variables within protocols, the only way to let the system know we want an immutable property is by setting it to "get". "get" means we can retrieve or "get" the property without allowing the property to also be "settable" or changeable.
//    mutating func incrementPercent(percent: Double)
//}
//extension ProgressProtocol {
//    var initialPercent: Double { 0.0 }
//
//}




//struct City: ProgressProtocol {
//    mutating func incrementPercent(percent: Double) {
//        // some code
//    }
//
//    var percent: Double
//}

struct Location: Identifiable {
    let id = UUID()
    let name: String
    var services: [String]
    var hasVisited = false
    let coordinates: CLLocationCoordinate2D
    let imageNames: [String]
    let link: String
}

struct District: Identifiable {
    let id = UUID()
    let name: String
    let tasks: [Adventure]
    let coordinates: CLLocationCoordinate2D
    let imageNames: [String]
    var percentage: Int
}


struct Adventure: Identifiable {
    let id = UUID()
    let description: String
    let taskImage: String
    let completionPercentage: Double
    
    init(description: String, taskImage: String, completionPercentage: Double) {
        self.description = description
        self.taskImage = taskImage
        self.completionPercentage = completionPercentage
    }
}




//enum POICategory: String, CaseIterable {
//case foodDrink, artHist, recreation
//}

enum Districts: String, CaseIterable, Identifiable, Hashable  {
    case downtown, mexicantown, midtown

    var id: UUID {
        UUID()
    }
    var districtName: String {
        switch self {

        case .downtown:
           return "Downtown"
        case .mexicantown:
            return "Mexicantown"
        case .midtown:
            return "Midtown"
        }
    }
}


