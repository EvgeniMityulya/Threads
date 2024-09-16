//
//  AuthService.swift
//  Threads
//
//  Created by Евгений Митюля on 9/17/24.
//

import Firebase
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user \(result.user.uid)")
        } catch {
            print("DEBUG: FAILED to create user with error \(error.localizedDescription)")
        }
    }
}
