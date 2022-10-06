//
//  Color+.swift
//  SampleNeumorphism
//
//  Created by mtanaka on 2022/10/06.
//

import SwiftUI

extension Color {
    
    static let neuBackground = Color(hex: "D3D3D3")
    static let dropShadow = Color(hex: "9E9E9E").opacity(0.5)
    static let dropLight = Color(hex: "F2F2F2")
}

extension Color {
    
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}
