//
//  View+.swift
//  SampleNeumorphism
//
//  Created by mtanaka on 2022/10/06.
//

import SwiftUI

extension View {
    func neumorphism(padding: CGFloat, cornerRadius: CGFloat)->some View {
        self.modifier(NeumorphismModifier(padding: padding, cornerRadius: cornerRadius))
    }
}

struct NeumorphismModifier: ViewModifier {
    var padding: CGFloat = 5
    var cornerRadius: CGFloat = 10
    func body(content:Content) -> some View {
        ZStack(content: {
            content
                .padding(padding)
                .background(
                    RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.neuBackground)
                )
                .shadow(color: .dropShadow, radius: 10, x: 6, y: 6)
                .shadow(color: .dropLight, radius: 10, x: -6, y: -6)
                .foregroundColor(.primary)
        })
    }
}
