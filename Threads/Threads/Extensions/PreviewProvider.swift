//
//  PreviewProvider.swift
//  Threads
//
//  Created by Евгений Митюля on 9/21/24.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Full Name", email: "test@gmail.com", username: "testuser")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test", timestamp: Timestamp(), likes: 0)
}
