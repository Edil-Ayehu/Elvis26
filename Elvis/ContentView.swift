//
//  ContentView.swift
//  Elvis
//
//  Created by Edil on 12/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName: String = ""
    @State private var message: String = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "Peace"
                }
                
                Button("Love") {
                    imageName = "heart"
                    message = "Love"
                }
                
                Button("Understanding") {
                    imageName = "lightbulb"
                    message = "Understanding"
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
