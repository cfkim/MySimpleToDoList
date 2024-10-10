//
//  TaskItemView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI

struct TaskItemView: View {
    var body: some View {
        HStack{
            Image(systemName: "square")
                .padding()
            Text("Feed the cat")
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .padding()
        }
        // background color will be colorful
        .background(Color.mint.opacity(0.5))
        .cornerRadius(15.0)
    }
}

#Preview {
    TaskItemView()
}
