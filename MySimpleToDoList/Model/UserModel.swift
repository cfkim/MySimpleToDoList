//
//  UserModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation

struct UserModel: Codable {
    let userID: String
    let email: String
    let name: String
    let joined: TimeInterval
}
