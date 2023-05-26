//
//  LearnSwiftUiApp.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 25/05/2023.
//

import SwiftUI

@main
struct LearnSwiftUiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(team: Team.dummyData[0])
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
