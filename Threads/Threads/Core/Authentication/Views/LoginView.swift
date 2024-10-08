//
//  LoginView.swift
//  Threads
//
//  Created by Евгений Митюля on 9/14/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
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
                TextField("Enter your email", text: $viewModel.email)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
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
                Task { try await viewModel.loginUser() }
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
                RegistrationView()
                    .navigationBarBackButtonHidden()
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
