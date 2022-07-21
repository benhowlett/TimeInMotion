//
//  Project.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-19.
//

import Foundation

class Project: ObservableObject, Identifiable, Hashable {
    let id = UUID()
    var name: String
    var client: String
    var type: String
    var observations: [Observation] = []
    
    init(name: String, client: String, projectType: String) {
        self.name = name
        self.client = client
        self.type = projectType
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
