//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Kheraba on 25/05/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @ObservedObject var viewModel = TeamsViewModel()
    
    private let audioManager = AudioManagerViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 24) {
                    
                    ForEach (viewModel.teams) { team in
                        TeamCard(team: team) { selectedteam in
                            audioManager.playback(selectedteam)
                            viewModel.togglePlayback(for: selectedteam)
                        }
                    }
                }
                .padding(.top, 8)
            }
            .padding(.horizontal, 8)
            .navigationBarTitle("Football Chants")

        }

    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
