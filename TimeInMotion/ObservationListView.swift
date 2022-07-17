//
//  ObservationListView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-17.
//

import SwiftUI

struct ObservationListView: View {
    @State private var path = NavigationPath()
    var observationList = [Observation("Observation 1"), Observation("Observation 2"), Observation("Observation 3"), Observation("Observation 4"), Observation("Observation 5")]
    
    var body: some View {
        NavigationStack(path: $path) {
            List(observationList) { observation in
                NavigationLink(observation.name, value: observation)
            }
            .navigationTitle("Observations")
            .navigationDestination(for: Observation.self) { observation in
                ObservationSetupView(observation: observation)
            }
        }
    }
}

struct ObservationListView_Previews: PreviewProvider {
    static var previews: some View {
        ObservationListView()
    }
}
