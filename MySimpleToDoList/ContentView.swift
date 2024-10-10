//
//  ContentView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
                VStack (spacing: -50){
                    // Task
                    ZStack{
                        List{
                            TaskItemView()
                                .listRowSeparator(.hidden)
                            TaskItemView()
                                .listRowSeparator(.hidden)
                            TaskItemView()
                                .listRowSeparator(.hidden)
                            TaskItemView()
                                .listRowSeparator(.hidden)
                            TaskItemView()
                                .listRowSeparator(.hidden)
                        }
                        .listRowSpacing(-8)
                        .zIndex(1.0)
                            .listStyle(.plain)
                        
                    }
                    ZStack{
                        // Add Task Space
                        Text("Add a New Task")
                            .bold()
                        Rectangle()
                            .fill(.green.opacity(0.5))
                            
                    }
                    .offset(y: 50)
                }.navigationTitle("My To do List")
        }
        
    }
}

#Preview {
    ContentView()
}
