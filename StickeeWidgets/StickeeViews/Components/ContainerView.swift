//
//  ContainerView.swift
//  Stickee
//
//  Created by Julian Labbe on 2/4/26.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        content
        .padding()
    }
}
