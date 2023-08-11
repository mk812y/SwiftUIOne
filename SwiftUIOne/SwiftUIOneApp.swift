//
//  SwiftUIOneApp.swift
//  SwiftUIOne
//
//  Created by Михаил Куприянов on 07.08.2023.
//

import SwiftUI

@main
struct SwiftUIOneApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
