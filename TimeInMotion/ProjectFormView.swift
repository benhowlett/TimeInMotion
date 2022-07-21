//
//  ProjectFormView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-21.
//

import SwiftUI

struct ProjectFormView: View {
    @State var project: Project
    
    var body: some View {
        VStack {
            Form() {
                Section(header: Text("Project Information")) {
                    TextField("Project Name", text: $project.name)
                    TextField("Client Name", text: $project.client)
                    TextField("Project Type", text: $project.type)
                }
            }
            HStack {
                Button(action: {
                    
                }) {
                    Text("Cancel")
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Create Project")
                }
            }
            .padding()
        }
    }
}

struct ProjectFormView_Previews: PreviewProvider {
    static var previews: some View {
        let project = Project(name: "", client: "", projectType: "")
        ProjectFormView(project: project)
    }
}
