//
//  ContentView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/4/26.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    let context: ActivityViewContext<StickeeLiveActivityAttributes>
    
    var body: some View {
        VStack() {
            TitleView(title: context.state.title)
            ProgressBarView(progress: context.state.progress)
        }
    }
}
