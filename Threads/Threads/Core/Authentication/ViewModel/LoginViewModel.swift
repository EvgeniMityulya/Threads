//
//  LoginViewModel.swift
//  Threads
//
//  Created by Евгений Митюля on 9/17/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func loginUser() async throws {
        try await AuthService.shared.login(
            withEmail: email,
            password: password
        )
    }
}
