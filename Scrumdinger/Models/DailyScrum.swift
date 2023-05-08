//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension DailyScrum{
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Cathy", "Daisy", "simon", "Jonathan", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Wev Dev", attendees: ["Chella", "Chris", "Chiristina", "Jonathan", "Eden", "Karla", "Lindsy", "aga", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
    ]
}
