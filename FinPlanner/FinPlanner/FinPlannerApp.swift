//
//  FinPlannerApp.swift
//  FinPlanner
//
//  Created by Roman on 03/01/2026.
//

import SwiftUI
import CoreData

@main
struct FinPlannerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
