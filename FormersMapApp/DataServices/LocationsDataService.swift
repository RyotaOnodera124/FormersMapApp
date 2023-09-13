//
//  LocationsDataService.swift
//  FormersMapApp
//
//  Created by 小野寺良太 on 2023/09/13.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "OnoderaFarm",
            cityName: "Hachimantai",
            coordinates: CLLocationCoordinate2D(latitude: 39.5423, longitude: 141.014),
            description: "小野寺農園ではほうれん草が5kg廃棄予定です。100g50円で販売しております。購入希望の方はお知らせください！",
            imageNames: ["onoderafarm-1", "onoderafarm-2"],
            link: "")
    ]
}

