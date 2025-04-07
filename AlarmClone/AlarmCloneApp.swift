//
//  AlarmCloneApp.swift
//  AlarmClone
//
//  Created by Elexoft on 07/04/2025.
//

import SwiftUI

@main
struct AlarmCloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
