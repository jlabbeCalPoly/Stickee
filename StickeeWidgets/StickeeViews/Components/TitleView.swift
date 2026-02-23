//
//  TitleView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/22/26.
//

import SwiftUI

struct TitleView : View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .lineLimit(1)
                .fontWeight(Font.Weight.bold)
            Spacer()
        }
    }
}
