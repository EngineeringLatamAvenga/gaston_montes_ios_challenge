//
//  Uala_TestApp.swift
//  Uala-Test
//
//  Created by Gastón Montes on 1/8/25.
//

import SwiftUI
import SwiftData

@main
struct Uala_TestApp: App {
    // MARK: - Vars.
    let appCoordinator = CityCoordinator()
    
    // MARK: - Storage properties.
    @AppStorage("isDarkMode") var appIsDarkMode: Bool = false

    // MARK: - Body.
    var body: some Scene {
        WindowGroup {
            self.appCoordinator.coordinatorStart()
                .preferredColorScheme(self.appIsDarkMode ? .dark : .light)
        }
    }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
}
