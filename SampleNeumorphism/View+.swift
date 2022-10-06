//
//  View+.swift
//  SampleNeumorphism
//
//  Created by mtanaka on 2022/10/06.
//

import SwiftUI

extension View {
    func neumorphism(padding: CGFloat)->some View {
        self.modifier(NeumorphismModifier(padding: padding))
    }
}

struct NeumorphismModifier: ViewModifier {
    var padding: CGFloat = 5
    func body(content:Content) -> some View {
        ZStack(content: {
            content
                .padding(padding)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color.neuBackground)
                )
                .shadow(color: .dropShadow, radius: 11, x: 8, y: 8)
                .shadow(color: .dropLight, radius: 11, x: -8, y: -8)
                .foregroundColor(.primary)
        })
    }
}
