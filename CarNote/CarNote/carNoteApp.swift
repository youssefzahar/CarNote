//
//  carNoteApp.swift
//  carNote
//
//  Created by youssef-mariem on 12/11/2022.
//

import SwiftUI

@main
struct carNoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ShowProduct()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
