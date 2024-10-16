//
//  ContentViewViewModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ContentViewViewModel: ObservableObject {
    //let id: String
    @Published var title: String = ""
    
    init() {
    }
    
    func addTask(){
        print("addTask")
        guard canSave else {
            return
        }
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let newId = UUID().uuidString
        let newItem = TaskItemModel(id: newId, title: title, isComplete: false)
        
        let db = Firestore.firestore()
        db.collection("users").document(uId).collection("todos").document(newId).setData(newItem.asDictionary())

    }
    
    var canSave : Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        return true
    }
}
