//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Евгений Митюля on 9/15/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    
    var id: Int { return self.rawValue }
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
//        case .likes:
//            return "Likes"
        }
    }
    
    case threads
    case replies
//    case likes
}
