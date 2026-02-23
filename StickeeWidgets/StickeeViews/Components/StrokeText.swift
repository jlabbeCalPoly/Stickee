//
//  StrokeText.swift
//  Stickee
//
//  Adapted from https://stackoverflow.com/questions/57334125/how-to-make-text-stroke-in-swiftui
//

import SwiftUI

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color
    
    var body: some View {
        ZStack() {
            ZStack() {
                Text(text).offset(x: -width, y: 0)
                Text(text).offset(x: -width/2, y: -width/2)
                Text(text).offset(x: 0, y: -width)
                Text(text).offset(x: width/2, y: -width/2)
                Text(text).offset(x: width, y: 0)
                Text(text).offset(x: width/2, y: width/2)
                Text(text).offset(x: 0, y: width)
                Text(text).offset(x: -width/2, y: width/2)
            }
            .foregroundStyle(Color.black)
            Text(text)
                .foregroundStyle(color)
        }
        .font(.system(size: 30, weight: .bold))
    }
}
