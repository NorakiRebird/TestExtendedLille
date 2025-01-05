//
//  SkillView.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 05/01/2025.
//

import SwiftUI

struct SkillView: View {
    // crée un état pour appeler mon tableau
    @State var vm = SkillsViewModel()
    
    // crée un état pour ma page profil ( en modal
    @State var showmodal: Bool = false
    
    var body: some View {
        
    NavigationStack {
        // Faire une listes de tous mes competences en rajoutant une section mettre mes index (C1,C2,C3) dans une VStack puis mettre également les titles
            List(vm.getAllSkill()){skill in
                Section(header:
                    VStack(alignment: .leading) {
                    Text("competence - \(skill.index.uppercased())").foregroundColor(.orange)
                    Text(skill.title)
                        .foregroundColor(.gray)
                }
                
                ) {
                    
                    // faire une liste dynamique pour mes sous competence  en y mettant un lien qui emmenera vers la vue detaillé rajoutant dessus le titles de mes competence
                    ForEach(skill.subSkills) { subskill in
                        NavigationLink(destination: SubSkillDetail(subSkill: subskill), label: {
                            Text(subskill.title)
                        })
                    }
                }
            }
        
        // titre et bouton pour acceder à mon profil bouton qui est en haut à droite de ma vue ( qui est dans une modal ) 
            .navigationTitle("competence à valider")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        showmodal.toggle()
                    }, label: {
                        Image(systemName: "person.circle.fill")
                    })

                }
            }
            .sheet(isPresented: $showmodal) {
                ProfileView(showmodal: $showmodal)
            }
        }
    }
}
 

#Preview {
    SkillView()
}
