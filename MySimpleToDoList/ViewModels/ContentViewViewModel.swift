//
//  ContentViewViewModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation

class ContentViewViewModel: ObservableObject {
    //let id: String
    @Published var title: String = ""
    
    init() {
    }
    
    func addTask(){
        print("addTask")
    }
}
