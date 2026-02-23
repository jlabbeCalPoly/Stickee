//
//  StickeeLiveActivityContentStatePreviewData.swift
//  Stickee
//
//  Created by Julian Labbe on 2/22/26.
//

import Foundation

public extension StickeeLiveActivityAttributes.ContentState {
    static func preview(
        title: String = "Miscellaneous Task",
        start: Date = Date(),
        end: Date = Date().addingTimeInterval(60)
    ) -> Self {
        .init(
            title: title,
            start: start,
            end: end
        )
    }
}
