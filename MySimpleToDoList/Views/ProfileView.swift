//
//  ProfileView.swift
//  MySimpleToDoList
//
//  Created by Christine Kim on 10/11/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        VStack{
            if let user = viewModel.user {
                profile(user: user)
                
            }
        }
    }
    
    @ViewBuilder
    func profile(user: UserModel) -> some View {
        Text(user.email)
        
    }
}

#Preview {
    ProfileView()
}
