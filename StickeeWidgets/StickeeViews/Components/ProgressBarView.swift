//
//  ProgressBarView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/22/26.
//

import SwiftUI

struct ProgressBarView: View {
    let progress: Double
    
    var body: some View {
        ZStack(alignment: .center) {
            ProgressView(progress: CGFloat(progress))
            PercentView(percent: Int(progress*100))
        }
    }
}
