//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
