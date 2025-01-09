//
//  CityCoordinatorView.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/9/25.
//

import SwiftUI

struct CityCoordinatorView: View {
    // MARK: - Observed Object.
    @ObservedObject private var coordinator: CityCoordinator
    
    // MARK: - Initialization.
    init(coordinator: CityCoordinator) {
        self.coordinator = coordinator
    }
    
    // MARK: - Body.
    var body: some View {
        Text("City Coordinator View")
    }
}
