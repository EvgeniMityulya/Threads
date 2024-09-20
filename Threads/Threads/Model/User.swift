//
//  User.swift
//  Threads
//
//  Created by Евгений Митюля on 9/20/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
