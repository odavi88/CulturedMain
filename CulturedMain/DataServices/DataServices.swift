//
//  DataServices.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/26/23.
//

import Foundation
import MapKit

enum LocationType {
    case foodDrink, landmark
    
    var locationType: String {
        switch self {
        case .foodDrink:
            return "🌮"
        case .landmark:
            return "🗿"
        }
    }
}


// MARK: All Districts for Cultured are here
#warning("We need to find and try the authentic Cuban food on the menu @ Armando's")
class DistrictDataService {

    public func fetchDistricts() -> [District] {
        return []
    }
    static var districts: [District] { [

//        District(
//            percent: 0.0,
//            name: "Belle Isle",
//            tasks: [
//                Task(description: "Check out this beautiful mural in Corktown.", taskImage: "birdMuralCTPic", completionPercentage: 0.0),
//            ],
//            coordinates: CLLocationCoordinate2D(latitude: 42.34028, longitude:  -82.98667),
//            imageNames: [""]),
//        District(
//            percent: 0.0,
//            name: "Corktown",
//            tasks: [
//                Task(description: "Check out this beautiful mural in Corktown.", taskImage: "birdMuralCTPic", completionPercentage: 0.0),
//            ],
//            coordinates: CLLocationCoordinate2D(latitude: 42.33006, longitude:  -83.072004),
//            imageNames: [""]),
        District(
            name: "Downtown",
            tasks: [
                Adventure(description: "Shoot some hoops.", taskImage: "midwayHoopPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Have fun driving bumper cars.", taskImage: "midwayBumperPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Enjoy the view.", taskImage: "campusMartiusPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Check out some Art-Deco architecture.", taskImage: "guardianBuildingPic", completionPercentage: 0.0, isComplete: false),
                Adventure(description: "Check out this amazing fountain.", taskImage: "hartPlazaPic", completionPercentage: 0.0, isComplete: false),
                Adventure(description: "Go for a stroll.", taskImage: "detRiverfrontPic", completionPercentage: 0.0, isComplete: true),

            ],
            coordinates: CLLocationCoordinate2D(latitude: 42.331456, longitude:  -83.046641),
            imageNames: ["campusMartiusPic"],
            percentage: 0),
        //        District(
        //            percent: 0.0,
        //            name: "Eastern Market",
        //            tasks: [
        //                Task(description: "Enjoy this mural.", taskImage: "easternMarkMuralPic"),
        //
        //            ],
        //            coordinates: CLLocationCoordinate2D(latitude: 42.346256, longitude:  -83.04007),
        //            imageNames: [""]),
        District(
            name: "Mexicantown",
            tasks: [
                Adventure(description: "Grab a sweet pastry.", taskImage: "mexTownBakeryPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Grab some ice cream.", taskImage: "laMichoacanaTempPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Enjoy some Cuban food in the Mexicantown.", taskImage: "armandosTacoPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Check out this mural.", taskImage: "mexTownMuralPic", completionPercentage: 0.0, isComplete: false),
            ],
            coordinates: CLLocationCoordinate2D(latitude: 42.318751, longitude:  -83.095185),
            imageNames: [""],
            percentage: 0),
        District(
            name: "Midtown",
            tasks: [
                Adventure(description: "Take in some art.", taskImage: "diaThinkerPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Find a good book.", taskImage: "midwayHoopPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Learn some Detroit history.", taskImage: "detroitHistoricalMuseumPic", completionPercentage: 0.0, isComplete: true),
                Adventure(description: "Shoot some hoops in the middle of Downtown", taskImage: "midwayHoopPic", completionPercentage: 0.0, isComplete: true),
            ],
            coordinates: CLLocationCoordinate2D(latitude: 42.348495, longitude:  -83.060303),
            imageNames: [""],
            percentage: 0),

    ]

    }
}

//// MARK: All Locations for Cultured are here
//
//class LocationsDataService {
//
//    static var locations: [Location] { [
////        Location(
////            name: "Detroit Historical Museum",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.317464, longitude: -83.092619),
////            imageNames: ["mexTownClarkParkPic"],
////            link: "https://mexicantownbakery.com"),
////        Location(
////            name: "Clark Park",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.317464, longitude: -83.092619),
////            imageNames: ["mexTownClarkParkPic"],
////            link: "https://mexicantownbakery.com"),
////        Location(
////            name: "Hard Gallery",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.326062, longitude: -83.081781),
////            imageNames: ["mexTownClarkParkPic"],
////            link: "https://mexicantownbakery.com"),
////        Location(
////            name: "Nevería La Michoacana",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.320472, longitude: -83.0956),
////            imageNames: ["laMichoacanaTempPic"],
////            link: "https://mexicantownbakery.com"),
////        Location(
////            name: "Armando's",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.320776, longitude: -83.09482),
////            imageNames: ["armandosTacoPic"],
////            link: "https://mexicantownbakery.com"),
////        Location(
////            name: "Mexicantown Bakery",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.320664, longitude: -83.095106),
////            imageNames: ["mexTownBakeryPic"],
////            link: "https://mexicantownbakery.com"),
//        Location(
//            name: "Monroe St. Midway",
//            locationType: .landmark,
//            coordinates: CLLocationCoordinate2D(latitude: 42.3323187, longitude:  -83.0452885),
//            imageNames: ["midwayPic"],
//            link: "https://decdoutdetroit.com/midway"),
//        Location(
//            name: "Campus Martius Park",
//            locationType: .landmark,
//            coordinates: CLLocationCoordinate2D(latitude: 42.3315143, longitude:  -83.0468513),
//            imageNames: ["campusMartiusPic"],
//            link: "https://nikispizza.com"),
////        Location(
////            name: "The Whitney",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.3528073, longitude: -83.0621254),
////            imageNames: ["campusMartiusPic"],
////            link: "https://nikispizza.com"),
////        Location(
////            name: "Source Booksellers",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.351389, longitude: -83.063837),
////            imageNames: ["sourceBooksellersPic"],
////            link: "https://nikispizza.com"),
//        //        Location(
//        //            name: "John K King Books Store",
//        //            locationType: .landmark,
//        //            coordinates: CLLocationCoordinate2D(latitude: 42.327439, longitude:  -83.056807),
//        //            district: "Corktown",
//        //            description: "This is a description of the location.",
//        //            imageNames: ["johnKKingBooksPic"],
//        //            link: "https://johnkingbooksdetroit.com"),
////        Location(
////            name: "Detroit Institute of the Arts",
////            locationType: .landmark,
////            coordinates: CLLocationCoordinate2D(latitude: 42.3595105, longitude: -83.0645259),
////            imageNames: ["diaThinkerPic"],
////            link: "https://dia.org"),
//        Location(
//            name: "The Guardian Building",
//            locationType: .landmark,
//            coordinates: CLLocationCoordinate2D(latitude: 42.32957535, longitude:  -83.0461077182232),
//            imageNames: ["guardianBuildingPic"],
//            link: "https://www.guardianbuilding.com"),
//        //        Location(
//        //            name: "Detroit Riverfront",
//        //            locationType: .landmark,
//        //            coordinates: CLLocationCoordinate2D(latitude: 42.3366931, longitude:  -83.0216976),
//        //            district: "Downtown",
//        //            description: "This is a description of the location.",
//        //            imageNames: ["detRiverfrontPic"],
//        //            link: "https://nikispizza.com"),
//        Location(
//            name: "Niki's Pizza",
//            locationType: .foodDrink,
//            coordinates: CLLocationCoordinate2D(latitude: 42.333616, longitude:  -83.041974),
//            imageNames: ["nikisDetPizzaPic"],
//            link: "https://nikispizza.com"),
//        //        Location(
//        //            name: "Cullen Family Carousel",
//        //            locationType: .landmark,
//        //            coordinates: CLLocationCoordinate2D(latitude: 42.3300, longitude:  -83.0319),
//        //            district: "Downtown",
//        //            description: "This is a description of the location.",
//        //            imageNames: ["cullenFamCarouselPic"],
//        //            link: "https://nikispizza.com"),
//        Location(
//            name: "Hart Plaza",
//            locationType: .landmark,
//            coordinates: CLLocationCoordinate2D(latitude: 42.328514, longitude: -83.04444),
//            imageNames: ["hartPlazaPic"],
//            link: "https://nikispizza.com"),
//        //        Location(
//        //            name: "Belle Isle Aquarium",
//        //            locationType: .landmark,
//        //            coordinates: CLLocationCoordinate2D(latitude: 42.3363027, longitude:  -82.985178617399),
//        //            district: "Belle Isle",
//        //            description: "This is a description of the location.",
//        //            imageNames: ["belleIsleAquariumPic"],
//        //            link: "https://www.belleisleconservancy.org"),
////                Location(
////                    name: "James S. Memorial Fountain",
////                    locationType: .landmark,
////                    coordinates: CLLocationCoordinate2D(latitude: 42.337830, longitude:  -83.000793),
////                    district: "Belle Isle",
////                    description: "This is a description of the location.",
////                    imageNames: ["belleIsleFountainPic"],
////                    link: "https://www.belleisleconservancy.org"),
//    ]

// Create loadLocations() function
//    }
//}



//struct Business {
//    var name: String
//    var services: [String]
//
//}
//
//let business: [Business] = [
//    .init(name: "Milk and froth", services: ["Ice Cream"])
//]
//
//// Creates a copy of any business where the closure is true
//let iceCreamShops = business.filter {
//    $0.services.contains("Ice Cream")
//
//}
//
//let visitedIceCreamShop = iceCreamShops[0]
//
//business.removeAll {
//    $0.name == visitedIceCreamShop
//}
//
//print(business)

