//
//  Observation.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import Foundation

class Observation: ObservableObject, Hashable , Identifiable{
    var name: String
    var date: Date
    
    init(_ name: String, _ date: Date = Date.now) {
        self.name = name
        self.date = date
    }
    
    static func == (lhs: Observation, rhs: Observation) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
