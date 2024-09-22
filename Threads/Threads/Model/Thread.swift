//
//  Thread.swift
//  Threads
//
//  Created by Евгений Митюля on 9/22/24.
//

import Firebase
import FirebaseFirestore

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    var user: User?
}
