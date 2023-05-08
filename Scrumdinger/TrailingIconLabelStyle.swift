//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 亀窪翼 on 2023/05/08.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self{ Self() }
}
