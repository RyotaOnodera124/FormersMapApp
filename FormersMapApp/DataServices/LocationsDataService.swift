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
            name: "小野寺Farm",
            cityName: "Sendai",
            coordinates: CLLocationCoordinate2D(latitude: 38.2482, longitude: 140.8693),
            description: "小野寺Farmではほうれん草が5kg廃棄予定です。100g50円で販売しております。購入希望の方はお知らせください！",
            imageNames: ["onoderafarm-1", "onoderafarm-2"],
            link: ""),
        Location(
            name: "松永Farm",
            cityName: "Tosu",
            coordinates: CLLocationCoordinate2D(latitude: 33.3777, longitude: 130.5062),
            description: "松永Farmではパプリカが3kg廃棄予定です。100g100円で販売しております。販売希望の方はお知らせください！",
            imageNames: ["matsunaga-1"],
            link: ""),
        Location(
            name: "さくちゃんFarm",
            cityName: "Kure",
            coordinates: CLLocationCoordinate2D(latitude: 34.2486, longitude: 132.5654),
            description: "さくちゃんFarmではエリンギが4kg廃棄予定です。100g３00円で販売しております。販売希望の方はお知らせください！",
            imageNames: ["sakuragi-1"],
            link: ""),
        Location(
            name: "AI社長の畑",
            cityName: "Sendai",
            coordinates: CLLocationCoordinate2D(latitude: 38.2482, longitude: 140.8501),
            description: "AI社長の畑では高級マンゴーが10kg廃棄予定です。100g1000円で販売しております。販売希望の方はお知らせください！",
            imageNames: [""],
            link: "")
    ]
}

