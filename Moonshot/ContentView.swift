//
//  ContentView.swift
//  Moonshot
//
//  Created by MaćKo on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var gridView = true

    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    var body: some View {
        NavigationStack {
            ScrollView {
                if gridView {
                    MissionsGridView(astronauts: astronauts, missions: missions)
                } else {
                    MissionsListView(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .toolbar {
                Button(gridView ? "List view" : "Grid view") {
                    gridView.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
