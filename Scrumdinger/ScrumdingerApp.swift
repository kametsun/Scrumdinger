//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
