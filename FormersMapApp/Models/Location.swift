//
//  Location.swift
//  FormersMapApp
//
//  Created by 小野寺良太 on 2023/09/13.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // name = "OnoderaFarm"
        // cityName = "Hachimantai"
        // id = "OnoderaFarmHachimantai"
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}


