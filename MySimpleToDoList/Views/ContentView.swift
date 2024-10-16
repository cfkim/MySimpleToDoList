//
//  ContentView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/10/24.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    var items: [TaskItemModel] = []

    
    init(userId: String) {
        let db = Firestore.firestore()
        db.collection("users/\(userId)/todos").addSnapshotListener { [weak self] (querySnapshot, error) in
            
            if let error = error {
                            print("Error fetching documents: \(error)")
                            return
            }
            self?.items = querySnapshot?.documents.compactMap { document in
                            try? document.data(as: TaskItemModel.self)
                        } ?? []
        }
    }
    
    var body: some View {
        NavigationView{
                VStack (spacing: -50){
                    // Task
                    ZStack{
                        List(items) { item in
                            TaskItemView(item: item)
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
                            .frame(height: 130)
                            
                    }
                    .onTapGesture {
                        viewModel.addTask()
                    }
                    .offset(y: 45)
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
    ContentView(userId: "123")
}
