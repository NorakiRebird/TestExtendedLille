//
//  SubskillDetail.swift
//  AyoubTest
//
//  Created by Rayann chaghla on 05/01/2025.
//

import SwiftUI

struct SubSkillDetail: View {
    var subSkill: SubSkill
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            VStack {
                Text(subSkill.title)
                Text(subSkill.assessement)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    SubSkillDetail(subSkill: subSkillsC1.first!)
}
