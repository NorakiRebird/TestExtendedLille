//
//  UserViewModel.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 04/01/2025.
//

import Foundation

@Observable
class UserViewModel {
    
    // Obtenir Le résultat  (moyenne des scores) est renvoyé comme un entier (Int)
    
    // Ma  fonction s'appelle   getGlobalProgress 
    func getGlobalProgress() -> Int {
        
        // Liste des compétences
        let skills = [
            Skill(index: "C1",title: "Conception d'une application mobile à partir d'une problématique", subSkills: subSkillsC1),
            Skill(index: "C2",title: "Développement d'une application mobile iOS", subSkills: subSkillsC2),
            Skill(index: "C3",title: "Gestion de projet, qualité et collaboration", subSkills: subSkillsC3)
        ]
        
        // On initialise une variable nbTrue à zéro, puis on ajoute les scores de chaque compétence
        var nbTrue = 0
        for skill in skills {
            nbTrue += skill.score
        }
        // On divise la somme des scores par le nombre total de compétences
        return (nbTrue / skills.count)
    }
    
}
