//
//  CityModel.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/9/25.
//

import CoreLocation

protocol CityModel: Identifiable {
    var cityID: Int { get }
    var cityDisplayName: String { get }
    var cityCoordinates: CLLocation { get }
}

extension CityModel {
    var id: Int {
        return self.cityID
    }
}
