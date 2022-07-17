//
//  ObservationView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import SwiftUI

struct ObservationView: View {
    var date: Date
    var observation: Observation
    
    var body: some View {
        VStack {
            Text("\(date)")
        }
        .navigationTitle("Observation")
    }
}
