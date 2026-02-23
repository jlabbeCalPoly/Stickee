//
//  StickeeLiveActivityAttributes.swift
//  Stickee
//
//  Created by Julian Labbe on 2/3/26.
//

import Foundation
import ActivityKit

public struct StickeeLiveActivityAttributes: ActivityAttributes {
    // Codable allows serialization of state (to and from JSON)
    // Hashable allows SwiftUI to efficiently determine changes to the state
    public struct ContentState: Codable, Hashable {
        var title: String
        var start: Date
        var end: Date
        var progress: Double = 0
    }
}
