//
//  CreateThreadViewModel.swift
//  Threads
//
//  Created by Евгений Митюля on 9/22/24.
//

import Foundation
import FirebaseAuth
import Firebase

class CreateThreadViewModel: ObservableObject {
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
//        if no firebase
//        let thread = Thread(id: NSUUID().uuidString, ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
