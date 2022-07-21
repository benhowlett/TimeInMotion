//
//  Project.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-19.
//

import SwiftUI

class Project: ObservableObject, Identifiable, Hashable {
    @Published var newObservationSheetIsShowing = false
    @Published var newObservationSheetDetent = PresentationDetent.large
    
    let id = UUID()
    var name: String
    var client: String
    var type: String
    @Published private(set) var observations: [Observation] = []
    
    init(name: String, client: String, projectType: String) {
        self.name = name
        self.client = client
        self.type = projectType
    }
    
    func addObservation(_ observation: Observation) {
        observations.append(observation)
    }
    
    static func == (lhs: Project, rhs: Project) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(client)
        hasher.combine(type)
        hasher.combine(observations)
    }
}
