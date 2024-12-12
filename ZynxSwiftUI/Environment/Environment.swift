//
//  Environment.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import FirebaseCore
import FirebaseFirestore
import Foundation

struct Environment {
    let name: String
    let firestoreSettings: FirestoreSettings
    let storageBucket: String
}
