//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {} ){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("スクラムを追加")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
