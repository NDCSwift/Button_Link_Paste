//
    // Project: Button_Link_Paste
    //  File: AdvancedButtonView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct AdvancedButtonView: View {
    @State private var gameScore = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Score: \(gameScore)")
                .font(.largeTitle)
            
            Button("Add Point") {
                addPoint()
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            .disabled(gameScore >= 5) // Disable if score is 5 or more
            
            Button("Reset Score") {
                resetScore(to: 0)
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
    }
    
    func addPoint(){
        gameScore += 1
        print("Score increased to \(gameScore)")
    }
    
    func resetScore(to value: Int){
        gameScore = value
        print("Score is reset to \(gameScore)")
    }
    
}
    
    
    
#Preview {
        AdvancedButtonView()
    }
