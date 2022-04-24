//
//  TasksApp.swift
//  Tasks
//
//  Created by Alexandre Talatinian on 21/04/2022.
//

import SwiftUI

@main
struct TasksApp: App {
    let persistenceController = PersistenceController.shared
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
