//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 25/05/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    let team: Team
    
    var body: some View {
        List(0 ..< 5) { item in
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
                        Text("Manager: ")
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
            .padding(8)
            .foregroundColor(.white)
            .background(team.id.background)
        .cornerRadius(10)
        }
    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(team: Team.dummyData[0])
    }
}
