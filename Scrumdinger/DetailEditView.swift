//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form{
            Section(header: Text("会議情報")) {
                TextField("title", text: $scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1){
                        Text("時間")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) 分")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) 分")
                        .accessibilityHidden(true)
                }
            }
            Section(header: Text("参加者")){
                ForEach(scrum.attendees){ attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack{
                    TextField("追加参加者", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("追加参加者")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
