//
//  ContentView.swift
//  Stickee
//
//  Created by Julian Labbe on 1/14/26.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    @State private var activity: Activity<StickeeLiveActivityAttributes>?
    
    var body: some View {
        Button("Start", action: startLiveActivity)
        .padding()
        .buttonStyle(.borderedProminent)
    }

    let attributes = StickeeLiveActivityAttributes()
    let state = StickeeLiveActivityAttributes.ContentState(
        title: "Test",
        start: Date(),
        end: Date().addingTimeInterval(60)
    )
    
    func startLiveActivity() {
        if ActivityAuthorizationInfo().areActivitiesEnabled {
            print("activities enabled")
        }
        do {
            activity = try Activity<StickeeLiveActivityAttributes>.request(
                attributes: attributes,
                content: .init(
                    state: state, staleDate: state.end),
                pushType: nil
            )
        } catch {
            print("An error occurred: ", error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
