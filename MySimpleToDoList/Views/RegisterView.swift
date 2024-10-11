//
//  RegisterView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        Text("Register")
            .bold()
        VStack{
            TextField("name", text: $viewModel.name)
                .textFieldStyle(.roundedBorder)
            
            TextField("email", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
                
            TextField("password", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        VStack{
            Text("Already have an account?")
            NavigationLink("Log in", destination: LoginView())
                .underline()
                .bold()

        }.padding()
        
        Button{
            viewModel.register()
        }label: {
            Text("Register")
        }
    }
}

#Preview {
    RegisterView()
}
