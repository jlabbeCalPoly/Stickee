//
//  PercentView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/22/26.
//

import SwiftUI

struct PercentView: View {
    let percent: Int
    
    var body: some View {
        StrokeText(
            text: "\(percent)%",
            width: 1,
            color: Color.opaquePurple
        )
    }
}
