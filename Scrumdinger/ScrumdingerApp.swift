//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
