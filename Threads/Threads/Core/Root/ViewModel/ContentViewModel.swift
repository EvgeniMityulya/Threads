//
//  ContentViewModel.swift
//  Threads
//
//  Created by Евгений Митюля on 9/17/24.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
