//
//  ContentView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import SwiftUI

struct ObservationFormView: View {
    @StateObject var project: Project
    @State var name = ""
    @State var date = Date.now
    @State var area = ""
    @State var crew = ""
    @State var shiftLength = 10
    @State var discipline = Observation.Discipline.siteWork
    @State var notes = ""
    
    var body: some View {
        VStack {
            Text("Enter the new observation information")
                            .padding()
            
            Form() {
                Section(header: Text("Observer's Name")) {
                    TextField("Name", text: $name)
                }
                Section(header: Text("Observation Date and Time")) {
                    DatePicker("Observation Date and Time", selection: $date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .labelsHidden()
                }
                Section(header: Text("Work Area")) {
                    TextField("Area", text: $area)
                }
                Section(header: Text("Crew Observed")) {
                    TextField("Crew", text: $crew)
                }
                Section(header: Text("Shift Length (hours)")) {
                    TextField("Shift Length (hours)", value: $shiftLength, formatter: NumberFormatter())
                }
                Section() {
                    Picker("Crew Discipline", selection: $discipline) {
                        ForEach(Array(Observation.Discipline.allCases), id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                }
                Section(header: Text("Notes")){
                    TextField("Notes", text: $notes)
                }
               
               
            }
            
            HStack {
                Button(action: {
                    project.newObservationSheetIsShowing = false
                }) {
                    Text("Cancel")
                        .frame(width: 120)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .fontWeight(.bold)
                }
                Spacer()
                Button(action: {
                    project.addObservation(Observation(name: name, date: date, area: area, crew: crew, shiftLength: shiftLength, discipline: discipline, notes: notes))
                    project.newObservationSheetIsShowing = false
                }) {
                    Text("Create Project")
                        .frame(width: 120)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .fontWeight(.bold)
                }
            }
            .padding()
        }
    }
}

struct ObservationSetupView_Previews: PreviewProvider {
    static var previews: some View {
        let project = Project(name: "Test", client: "Test", projectType: "Test")
        ObservationFormView(project: project)
    }
}
