//
//  TaskItemView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI

struct TaskItemView: View {
    @StateObject var viewModel = TaskItemViewViewModel()
    let item: TaskItemModel
    var body: some View {
        HStack{
            Image(systemName: "square")
                .onTapGesture {
                    viewModel.toggle(item: item)
                }
                .padding()
            Text(item.title)
            Spacer()
            Image(systemName: "trash")
                .onTapGesture {
                    viewModel.delete(item: item)
                }
                .foregroundColor(.red)
                .padding()
        }
        // background color will be colorful
        .background(Color.mint.opacity(0.5))
        .cornerRadius(15.0)
    }
}

#Preview {
    TaskItemView(item: TaskItemModel(id: "123", title: "go shopping", isComplete: false))
}
