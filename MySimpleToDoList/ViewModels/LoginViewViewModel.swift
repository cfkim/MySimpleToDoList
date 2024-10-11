//
//  LoginViewViewModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var error = ""
    init() {}
    
    func login() {
        print("login pressed")
    }
}
