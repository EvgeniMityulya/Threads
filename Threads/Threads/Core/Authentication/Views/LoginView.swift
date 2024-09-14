//
//  LoginView.swift
//  Threads
//
//  Created by Евгений Митюля on 9/14/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            
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
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 24)
            }
            
            NavigationLink {
                Text("Forgot password")
            } label: {
                Text("Forgot password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.vertical)
                    .padding(.trailing, 28)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Button {
                
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            Spacer()
            
            Divider()
            
            NavigationLink {
                Text("Registration View")
            } label: {
                HStack(spacing: 3) {
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)

        }
    }
}

#Preview {
    LoginView()
}
