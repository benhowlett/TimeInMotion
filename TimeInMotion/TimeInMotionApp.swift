//
//  TimeInMotionApp.swift
//  TimeInMotion
//
//  Created by Ben Howlett on 2022-07-16.
//

import SwiftUI

@main
struct TimeInMotionApp: App {
    let projectList = ProjectList()
    
    var body: some Scene {
        WindowGroup {
            ProjectListView(projects: projectList)
        }
    }
}
