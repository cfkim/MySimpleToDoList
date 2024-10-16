//
//  LoginView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        Text("Login")
            .bold()
        VStack{
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage).foregroundColor(.red)
            }
            
            TextField("email", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
                
            TextField("password", text: $viewModel.password)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        VStack{
            Text("New here?")
            NavigationLink("Create an account", destination: RegisterView())
                .underline()
                .bold()

        }.padding()
        
        Button{
            viewModel.login()
        }label: {
            Text("Login")
        }
    }
}

#Preview {
    LoginView()
}
