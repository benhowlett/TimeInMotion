//
//  ProjectListViewModel.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-19.
//

import SwiftUI

class ProjectList: ObservableObject {
    @Published private(set) var projects: [Project] = []
    @Published var newProjectSheetIsShowing = false
    @Published var newProjectSheetDetent = PresentationDetent.medium
    @Published var newObservationSheetIsShowing = false
    @Published var newObservationSheetDetent = PresentationDetent.large
    
    func addProject(_ project: Project) {
        projects.append(project)
    }
    
    func removeProject(_ project: Project) {
        if let index = projects.firstIndex(where: {$0.id == project.id}) {
            projects.remove(at: index)
        }
    }
}
