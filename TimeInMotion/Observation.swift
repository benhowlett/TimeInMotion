//
//  Observation.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import Foundation

class Observation: ObservableObject, Hashable , Identifiable{
    let id = UUID()
    var name: String
    var date: Date
    var area: String
    var crew: String
    var shiftLength: Int
    var discipline: Discipline
    var time: Date
    var notes: String
    
    init(name: String, date: Date = Date.now, area: String, crew: String, shiftLength: Int, discipline: Discipline, time: Date, notes: String) {
        self.name = name
        self.date = date
        self.area = area
        self.crew = crew
        self.shiftLength = shiftLength
        self.discipline = discipline
        self.time = time
        self.notes = notes
    }
    
    static func == (lhs: Observation, rhs: Observation) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

enum Discipline {
    case demolition
    case siteWork
    case structuralConcrete
    case structuralSteel
    case mechanical
    case piping
    case electrical
    case instrumentation
    case painting
    case subcontractor
    case fireproofing
    case insulation
}
