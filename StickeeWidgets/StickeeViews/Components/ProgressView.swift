//
//  ProgressView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/22/26.
//

import SwiftUI

struct ProgressView: View {
    let progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.transparentPurple)
                .frame(height: 12)
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.opaquePurple)
                    .frame(width: geometry.size.width * progress)
            }
            .frame(height: 12)
        }
    }
}
