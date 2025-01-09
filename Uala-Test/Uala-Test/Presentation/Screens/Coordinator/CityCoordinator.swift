//
//  CityCoordinator.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/9/25.
//

import Foundation
import SwiftUI

class CityCoordinator: ObservableObject {
    // MARK: - Published vars.
    @AppStorage("isDarkMode") var coordinatorIsDarkMode: Bool = false
    @Published var coordinatorPath = NavigationPath()
    @Published var coordinatorIsPresenting: Bool = false
    
    // MARK: - Navigation show functions.
    func coordinatorPush() {}
    
    func coordinatorPresentSheet() {}
    
    func coordinatorPresentCover() {}
    
    // MARK: - Navigation hide functions.
    func coordinatorPop() {}
    
    func coordinatorPopToRoot() {}
    
    func coordinatorDismissSheet() {}
    
    func coordinatorDismissCover() {}
    
    // MARK: - View builder functions.
    @ViewBuilder
    func coordinatorStart() -> some View {
        CityCoordinatorView(coordinator: self)
    }
}
