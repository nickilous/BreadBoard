//
//  BreadBoardApp.swift
//  BreadBoard
//
//  Created by Nicholas Hartman on 2/4/21.
//

import SwiftUI

@main
struct BreadBoardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
