//
//  ProfileView.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 05/01/2025.
//

import SwiftUI

struct ProfileView: View {
    @Binding var showmodal: Bool
    var body: some View {
        VStack {
            Button(action:  {
                showmodal = false
            }, label: {
                Text("Close")
            })
            Text("Profile View")
        }

    }
}

#Preview {
    ProfileView(showmodal: .constant(true))
}
