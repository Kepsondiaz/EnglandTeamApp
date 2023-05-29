//
//  TeamCard.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 29/05/2023.
//

import SwiftUI

struct TeamCard: View {
    
    let team: Team
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top, spacing: 12) {
                
                Image(team.id.badge)
                    .resizable()
                    .scaledToFit()
                    .frame(width:50, height:50)
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(team.name)
                        .font(.system(size: 18, weight: .bold))
                    Text("Founded: \(team.founded)")
                        .font(.system(size: 12, weight: .light))
                    Text("Current \(team.manager.job.rawValue): \(team.manager.name)")
                        .font(.system(size: 10, weight: .light))
                    Text(team.info)
                        .font(.system(size: 12, weight: .medium))
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                })
                .frame(maxWidth: 40, maxHeight: .infinity, alignment: .center)
            }
            
        }
        .applyTeamCardViewStyle(teamType: team.id)
    }
}

struct TeamCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamCard(team: Team.dummyData[0])
                .previewLayout(PreviewLayout.fixed(width: 400, height: 150))
                .padding()
            .previewDisplayName("Dummy Data 1: Team Card preview")
            
            TeamCard(team: Team.dummyData[1])
                .previewLayout(PreviewLayout.fixed(width: 400, height: 150))
                .padding()
            .previewDisplayName("Dummy Data 2: Team Card preview")
        }
    }
}
