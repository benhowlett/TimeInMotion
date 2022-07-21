//
//  ContentView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import SwiftUI

struct ObservationSetupView: View {
    //@State var path: NavigationPath
    let observation: Observation
    
    var body: some View {
        VStack {
            NavigationLink(observation.name, value: observation.date)
        }
        .navigationTitle("Observation Setup")
        .navigationDestination(for: Date.self) { date in
            ObservationView(date: date, observation: observation)
        }
    }
}

struct ObservationSetupView_Previews: PreviewProvider {
    static var previews: some View {
        let observation = Observation(name: "Test Name", area: "Test Area", crew: "Test Crew", shiftLength: 10, discipline: .electrical, time: Date.now, notes: "")
        ObservationSetupView(observation: observation)
    }
}
