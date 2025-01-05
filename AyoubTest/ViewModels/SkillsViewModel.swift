//
//  SkillsViewModel.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 04/01/2025.
//

import Foundation


@Observable
class SkillsViewModel {
    
    // Appelle l'API pour récupérer tous les skills ainsi que leus subskills
    // Traitements divers (formatage de données, etc...)
    func getAllSkill() -> [Skill] {
        return [
            
            // Ici on simule la bonne réception des données
            // Le format est un tableau de Skills qui inclu les subskills
            
            Skill(index: "C1",title: "Conception d'une application mobile à partir d'une problématique", subSkills: subSkillsC1),
            Skill(index: "C2",title: "Développement d'une application mobile iOS", subSkills: subSkillsC2),
            Skill(index: "C3",title: "Gestion de projet, qualité et collaboration", subSkills: subSkillsC3)
        ]
    }
}


