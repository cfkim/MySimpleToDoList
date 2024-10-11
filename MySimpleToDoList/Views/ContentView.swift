//
//  ContentView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
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
                        TextField("", text: $viewModel.title, prompt: Text("Add New Task").foregroundColor(.black))
                            .bold()
                            .zIndex(10)
                            .font(.custom("", size: 20))
                            .multilineTextAlignment(.center) // Center the text inside the TextField
                            
                        Rectangle()
                            .fill(Color(red: 211 / 255, green: 254 / 255, blue: 202 / 255))
                            
                    }
                    .onTapGesture {
                        viewModel.addTask()
                    }
                    .offset(y: 50)
                }.navigationTitle("My To do List").toolbar {
                    Button {
                        print("show profile sheet")
                    } label: {
                        Image(systemName: "person").tint(.gray).padding()
                    }
                }
        }
        
    }
}

#Preview {
    ContentView()
}
