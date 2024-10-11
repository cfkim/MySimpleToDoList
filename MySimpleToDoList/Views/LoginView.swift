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
            TextField("email", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
                
            TextField("password", text: $viewModel.email)
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
