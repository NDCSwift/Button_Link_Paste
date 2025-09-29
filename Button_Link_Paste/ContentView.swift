//
    // Project: Button_Link_Paste
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Default Button") {}
            
            Button("Bordered Button") {}
                .buttonStyle(.bordered) // Bordered style
            
            Button("Prominent Button") {}
                .buttonStyle(.borderedProminent) // Filled style
            
            Button("Large Red Button") {
                counter += 1
            }
                .buttonStyle(.borderedProminent)
                .controlSize(.large) // Larger size
                .tint(.red) // Custom tint color
                .sensoryFeedback(.selection, trigger: counter)

               
            


            Button {
                // Action
            } label: {
                Image(systemName: "plus.app.fill")
            }
            .accessibilityLabel("Plus button")
            .buttonStyle(.bordered)
            .controlSize(.small)
            .tint(.blue)
            .clipShape(Circle())
            .accessibilityHint("Hint") // Apply a custom shape
        }
        .padding()
        
        
    }
}





#Preview {
    ContentView()
}
