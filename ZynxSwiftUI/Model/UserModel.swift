//
//  UserModel.swift
//  ZynxSwiftUI
//
//  Created by Titus Logo on 12/12/24.
//

import Foundation

struct UserModel: Codable {
    var uid: String?
    var email: String?
    var phoneNumber: String?
    var gender: GenderEnum?
    
    init(from data: Data) throws {
        let decoder = JSONDecoder()
        self = try decoder.decode(UserModel.self, from: data)
    }
}
