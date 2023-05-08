//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("会議の情報")){
                Label("開始時間", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack{
                    Label("所要時間", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) 分")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("テーマ", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
