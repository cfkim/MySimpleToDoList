//
//  MySimpleToDoListApp.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI
import FirebaseCore

@main
struct MySimpleToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
