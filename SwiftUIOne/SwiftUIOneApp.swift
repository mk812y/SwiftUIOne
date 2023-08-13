//
//  SwiftUIOneApp.swift
//  SwiftUIOne
//
//  Created by Михаил Куприянов on 07.08.2023.
//

import SwiftUI

@main
struct SwiftUIOneApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
