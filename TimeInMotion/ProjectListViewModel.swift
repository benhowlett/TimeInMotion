//
//  ProjectListViewModel.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-19.
//

import Foundation

class ProjectList: ObservableObject {
    @Published private var projects: [Project] = []
    
    var allProjects: [Project] {
        projects
    }
    
    func addProject(_ project: Project) {
        projects.append(project)
    }
    
    func removeProject(_ project: Project) {
        if let index = projects.firstIndex(where: {$0.id == project.id}) {
            projects.remove(at: index)
        }
    }
}
