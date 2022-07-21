//
//  ObservationListView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-17.
//

import SwiftUI

struct ObservationListView: View {
    @StateObject var project: Project
    
    var body: some View {
        ZStack {
            List(project.observations) { observation in
                NavigationLink(observation.name, value: observation)
            }
            .navigationTitle(project.name)
            .navigationDestination(for: Observation.self) { observation in
                ObservationSetupView(observation: observation)
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        viewModel.newProjectSheetIsShowing = true
                    }, label: {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(10)
                            
                    })
                    .background(Color.accentColor)
                    .cornerRadius(45)
                    .padding()
                    .shadow(radius: 3, x: 3, y: 3)
                }
            }
        }
    }
}

struct ObservationListView_Previews: PreviewProvider {
    static var previews: some View {
        let project = Project(name: "Test Project", client: "Test Client", projectType: "Test Project Type")
        ObservationListView(project: project)
    }
}
