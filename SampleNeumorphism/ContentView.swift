//
//  ContentView.swift
//  SampleNeumorphism
//
//  Created by mtanaka on 2022/10/06.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.neuBackground
                    .ignoresSafeArea()
                VStack {
                    Image(systemName: "forward.fill")
                        .neumorphism(padding: 30)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
