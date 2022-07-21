//
//  ObservationListView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-17.
//

import SwiftUI

struct ObservationListView: View {
    @State private var path = NavigationPath()
    var project: Project
    
    var body: some View {
        List(project.observations) { observation in
            NavigationLink(observation.name, value: observation)
        }
        .navigationTitle("Observations")
        .navigationDestination(for: Observation.self) { observation in
            ObservationSetupView(observation: observation)
        }
    }
}

struct ObservationListView_Previews: PreviewProvider {
    static var previews: some View {
        let project = Project(name: "Test Project", client: "Test Client", projectType: "Test Project Type")
        ObservationListView(project: project)
    }
}
