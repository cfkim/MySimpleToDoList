//
//  RegisterViewViewModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation

class RegisterViewViewModel : ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        print("registered")
    }
}
