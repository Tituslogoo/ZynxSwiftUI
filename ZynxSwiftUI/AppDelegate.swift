//
//  AppDelegate.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage
import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        let currentEnvironment: AppEnvironment = AppEnvironment.current

        FirebaseApp.configure()
        Firestore.firestore().settings = currentEnvironment.configuration.firestoreSettings
        
        return true
    }
}
