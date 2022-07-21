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
    var notes: String
    let dateFormatter = DateFormatter()
    
    init(name: String, date: Date = Date.now, area: String, crew: String, shiftLength: Int, discipline: Discipline, notes: String) {
        self.name = name
        self.date = date
        self.area = area
        self.crew = crew
        self.shiftLength = shiftLength
        self.discipline = discipline
        self.notes = notes
        dateFormatter.dateFormat = "YYYY-MM-DD"
    }
    
    static func == (lhs: Observation, rhs: Observation) -> Bool {
        lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    enum Discipline: String, CaseIterable {
        case demolition = "Demolition"
        case siteWork = "Site Work"
        case structuralConcrete = "Structural Concrete"
        case structuralSteel = "Structural Steel"
        case mechanical = "Mechanical"
        case piping = "Piping"
        case electrical = "Electrical"
        case instrumentation = "Instrumentation"
        case painting = "Painting"
        case subcontractor = "Subcontractor"
        case fireproofing = "Fireproofing"
        case insulation = "Insulation"
    }
}
