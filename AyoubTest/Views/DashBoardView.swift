//
//  DashBoardView.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 04/01/2025.
//

import SwiftUI

struct DashBoardView: View {
    @State var vmSkills = SkillsViewModel()
    @State var vmUser = UserViewModel()
    
    // une modal pour permetttre d'ouvrir les settings
    @State var showModal: Bool = false
    
    
    
    // Crée une variable de couleur
    var bckColor: Color {
        switch vmUser.getGlobalProgress() {
   // Si la progression est entre 0 et 50%, la couleur sera rouge (.rouge).
        case 0...50:
            return .red
    //Si la progression est entre 52 et 70, la couleur sera Orange, si la progression dépasse 70%, elle tombera dans le default, qui retourne la couleur verte (.green).
        case 52...70:
            return .orange
        default:
            return .green
        }
    }
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                // Rectangle qui change la couleur si le pourcentage augment
                ZStack {
                    Rectangle()
                        .foregroundColor(bckColor)
                    VStack {
                        Text("Progression Global")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        
                        // Afficher le pourcentage de mon score global
                        Text("\(vmUser.getGlobalProgress())%")
                            .font(.system(size: 100))
                    }.foregroundStyle(.white)
                    
                // Fin de ma Ztack
                }.frame(height: 160)
                
                
                // Liste pour afficher toutes mes compétences
                ForEach(vmSkills.getAllSkill()){ skill in
                    HStack {
                        Text("Competence \(skill.index) -")
                        Text("\(skill.score)%")
                            .foregroundColor(.orange)
                    }.bold()
                    
                    // Liste pour afficher mes sous compétences
                    ForEach(skill.subSkills) { subSkill in
                        HStack {
                            // Afficher les C1, C2, C3
                            Text("\(skill.index):")
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(subSkill.isValid ? .blue : .red)
                        }
                    }
                }
                
            }
            .navigationBarTitle("Tableau de Board")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showModal.toggle()
                    }, label: {
                        Image(systemName: "person.circle.fill")
                    
                    })
                }
            }
            .sheet(isPresented: $showModal) {
                ProfileView(showmodal: $showModal)
            }
        }
    }
}

#Preview {
    DashBoardView()
}
