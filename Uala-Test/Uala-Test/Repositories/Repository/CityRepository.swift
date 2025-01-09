//
//  CityRepository.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/9/25.
//

class CityRepository: CityDatasource {
    // MARK: - Property.
    private var cityLocalRepository: CityDatasource
    private var cityRemoteRepository: CityDatasource
    
    // MARK: - Initialization.
    init(local: CityDatasource = CityLocalRepository(),
         remote: CityDatasource = CityRemoteRepository()) {
        self.cityLocalRepository = local
        self.cityRemoteRepository = remote
    }
    
    // MARK: - CityDatasource implementation.
    func cityDatasourceGetCities(forFilter: String?) async throws -> [CityDatasource] {
        if let localCities = try? await self.cityLocalRepository.cityDatasourceGetCities(forFilter: forFilter) {
            return localCities
        }
        
        return try await self.cityRemoteRepository.cityDatasourceGetCities(forFilter: forFilter)
    }
}
