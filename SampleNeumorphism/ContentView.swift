//
//  ContentView.swift
//  SampleNeumorphism
//
//  Created by mtanaka on 2022/10/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text1 = ""
    private let fruits = ["りんご", "オレンジ", "バナナ"]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.neuBackground
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 50) {
                    
                    HStack(spacing: 20) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "apple.logo")
                        }
                        .neumorphism(padding: 30, cornerRadius: 40)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "apple.logo")
                        }
                        .neumorphism(padding: 30, cornerRadius: 20)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "apple.logo")
                        }
                        .neumorphism(padding: 30, cornerRadius: 5)
                    }
                    
                    TextField("ニューモフィズム〜", text: $text1)
                        .neumorphism(padding: 20, cornerRadius: 10)
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
