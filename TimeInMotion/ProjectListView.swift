//
//  ProjectListView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-19.
//

import SwiftUI

struct ProjectListView: View {
    @ObservedObject var projects: ProjectList
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                List(projects.allProjects) { project in
                    NavigationLink(project.name, value: project)
                }
                .navigationTitle("Projects")
                .navigationDestination(for: Project.self) { project in
                    ObservationListView(project: project)
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        
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

struct ProjectListView_Previews: PreviewProvider {
    static var previews: some View {
        let projectList = ProjectList()
        ProjectListView(projects: projectList)
    }
}
