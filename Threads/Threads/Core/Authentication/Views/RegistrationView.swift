//
//  RegistrationView.swift
//  Threads
//
//  Created by Евгений Митюля on 9/14/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Spacer()
        
        VStack {
            Image("threads-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
        }
        
        VStack {
            TextField("Enter your email", text: $email)
                .autocorrectionDisabled()
                .modifier(ThreadsTextFieldModifier())
            
            SecureField("Enter your password", text: $password)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your full name", text: $fullname)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your username", text: $username)
                .modifier(ThreadsTextFieldModifier())
            
        }
        
        Button {
            
        } label: {
            Text("Sign up")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 352, height: 44)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.vertical)
        
        Spacer()
        
        Divider()
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3) {
                Text("Don't have an account?")
                
                Text("Sign in")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.black)
            .font(.footnote)
        }
        .padding(.vertical, 16)
    }
}

#Preview {
    RegistrationView()
}
