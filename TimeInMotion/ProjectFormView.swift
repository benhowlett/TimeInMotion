//
//  ProjectFormView.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-21.
//

import SwiftUI

struct ProjectFormView: View {
    @StateObject var viewModel: ProjectList
    @State var newProjectName = ""
    @State var newProjectClientName = ""
    @State var newProjectType = ""
    
    var body: some View {
        VStack {
            Text("Enter the new project information")
                .padding()
            Form() {
                Section(header: Text("Project Name")) {
                    TextField("Project Name", text: $newProjectName)
                }
                Section(header: Text("Client Name")) {
                    TextField("Client Name", text: $newProjectClientName)
                }
                Section(header: Text("Project Type")) {
                    TextField("Project Type", text: $newProjectType)
                }
            }
            HStack {
                Button(action: {
                    viewModel.newProjectSheetIsShowing = false
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
                    viewModel.addProject(Project(name: newProjectName, client: newProjectClientName, projectType: newProjectType))
                    viewModel.newProjectSheetIsShowing = false
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

struct ProjectFormView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ProjectList()
        ProjectFormView(viewModel: viewModel)
    }
}
