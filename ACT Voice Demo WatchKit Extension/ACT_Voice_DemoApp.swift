//
//  ACT_Voice_DemoApp.swift
//  ACT Voice Demo WatchKit Extension
//
//  Created by Healy Dwyer on 10/12/21.
//

import SwiftUI
import Intents

@main
struct ACT_Voice_DemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
        .onChange(of: scenePhase) { phase in
                        INPreferences.requestSiriAuthorization({status in
                        // Handle errors here
                    })
        }
    }
}
