//
//  TaskItemViewViewModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class TaskItemViewViewModel: ObservableObject {
    init() {}
    
    func toggle(item: TaskItemModel) {
        var itemCopy = item
        itemCopy.setComplete(!item.isComplete)
        print("toggle")
        // save the item copy
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users").document(uid).collection("todos").document(itemCopy.id).setData(itemCopy.asDictionary())
    }
    
    func delete(item: TaskItemModel) {
        print("delete")
        // save the item copy
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users").document(uid).collection("todos").document(item.id).delete()
    }
    
}
