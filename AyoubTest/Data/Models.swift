//
//  Models.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 31/12/2024.
//

    import Foundation


struct Skill: Identifiable {
    var id = UUID()
    var index: String
    var title: String
    var subSkills: [SubSkill]
    

    // Propriété calculée pour obtenir le score de la compétence
    var score: Int {
        var nbTrue: Double = 0 // Variable pour compter le nombre de sous-compétences valides (isValid == true)
        
        // Boucle sur chaque sous-compétence
        for subskill in subSkills {
            if subskill.isValid { // Vérifie si la sous-compét ence est valide
                nbTrue += 1 // Incrémente le compteur si la sous-compétence est valide
            }
        }
        // Calcul du pourcentage de sous-compétences valides et conversion en entier
        return Int((nbTrue / Double(subSkills.count)) * 100)
    }
}


struct SubSkill: Identifiable {
    var id = UUID()
    var index: String
    var title: String
    var assessement: String
    var isValid: Bool
    
   
    init(index: String, title: String, assessement: String, isValid: Bool = false) {
        self.index = index
        self.title = title
        self.assessement = assessement
        self.isValid = isValid
    }
}

