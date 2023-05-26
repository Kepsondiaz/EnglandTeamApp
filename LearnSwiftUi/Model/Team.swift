//
//  Team.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 26/05/2023.
//

import Foundation

struct Team {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isplaying: Bool = false
}


extension Team {
    var dummyData: [Team] {
        return [
            Team(id: .arsenal, name: "Team 1", info: "This is arsenal Team", manager: Manager(name: "Arteta", job: .manager), founded: "1980"),
            Team(id: .astonVilla, name: "Team 2", info: "This is astonVilla Team", manager: Manager(name: "manager 2", job: .manager), founded: "1900"),
            Team(id: .manchesterCity, name: "Team 3", info: "This is manchesterCity Team", manager: Manager(name: "Pep Gouardiola", job: .manager), founded: "1940")
            
        ]
    }
}
