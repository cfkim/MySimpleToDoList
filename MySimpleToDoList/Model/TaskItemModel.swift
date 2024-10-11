//
//  TaskItemModel.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import Foundation

struct TaskItemModel: Codable, Identifiable {
    let id: String
    let title: String
    var isComplete: Bool
    
    mutating func setComplete(_ state: Bool) {
        isComplete = state
    }
}
