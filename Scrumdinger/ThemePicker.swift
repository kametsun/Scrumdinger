//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("テーマ", selection: $selection){
            ForEach(Theme.allCases){ theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
