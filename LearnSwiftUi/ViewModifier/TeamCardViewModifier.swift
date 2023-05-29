//
//  TeamCardViewModifier.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 26/05/2023.
//

import SwiftUI

struct TeamCardViewModifier: ViewModifier {
    
    let teamType: TeamType
    
    func body(content: Content) -> some View {
        content
            .padding(8)
            .foregroundColor(.white)
            .background(teamType.background)
            .cornerRadius(10)
    }
}

extension View {
    func applyTeamCardViewStyle(teamType: TeamType) -> some View{
        self.modifier(TeamCardViewModifier(teamType: teamType))
    }
}


