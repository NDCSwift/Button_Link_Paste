//
    // Project: Button_Link_Paste
    //  File: BasicLinkView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct BasicLinkView: View {
    
    var body: some View {
        VStack(spacing: 20) {

            Link("Go to Apple's website", destination: URL(string: "https://www.apple.com")!)
                .font(.title2)
                .tint(.blue)
                .padding()
                .background(Color.pink.opacity(0.1))
                .cornerRadius(12)
            
            Link(destination: URL(string: "mailto:support@example.com")!){
                HStack{
                    Image(systemName: "envelope.fill")
                    Text("Email Support")
                }
                .font(.largeTitle)
                .foregroundStyle(.green)
            }

        }
    }
}

#Preview {
    BasicLinkView()
}
