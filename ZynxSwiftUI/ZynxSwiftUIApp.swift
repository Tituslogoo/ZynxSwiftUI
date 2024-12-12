//
//  ZynxSwiftUIApp.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import SwiftUI

@main
struct ZynxSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
