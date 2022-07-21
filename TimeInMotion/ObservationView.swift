//
//  ObservationView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import SwiftUI

struct ObservationView: View {
    var observation: Observation
    
    var body: some View {
        VStack {
            Text(observation.name)
        }
        .navigationTitle("Observation")
    }
}
