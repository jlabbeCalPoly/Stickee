//
//  StickeeLiveActivity.swift
//  Stickee
//
//  Created by Julian Labbe on 2/3/26.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct StickeeLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: StickeeLiveActivityAttributes.self) { context in
            ContainerView {
                ContentView(
                    context: context
                )
            }
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.center) {
                    Text("test")
                }
                DynamicIslandExpandedRegion(.leading) {
                    Text("test")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("test")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("test")
                }
            } compactLeading: {
                Text("test")
            } compactTrailing: {
                Text("test")
            } minimal: {
                Text("test")
            }
        }
    }
}

#Preview(
    "Content",
    as: .content,
    using: StickeeLiveActivityAttributes.preview()
) {
    StickeeLiveActivity()
} contentStates: {
    StickeeLiveActivityAttributes.ContentState.preview()
}

#Preview(
    "Dynamic Island - Expanded",
    as: .dynamicIsland(ActivityPreviewViewKind.DynamicIslandPreviewViewState.expanded),
    using: StickeeLiveActivityAttributes.preview()
) {
    StickeeLiveActivity()
} contentStates: {
    StickeeLiveActivityAttributes.ContentState.preview()
}

#Preview(
    "Dynamic Island - Compact",
    as: .dynamicIsland(ActivityPreviewViewKind.DynamicIslandPreviewViewState.compact),
    using: StickeeLiveActivityAttributes.preview()
) {
    StickeeLiveActivity()
} contentStates: {
    StickeeLiveActivityAttributes.ContentState.preview()
}
