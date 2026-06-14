//
    // Project: Button_Link_Paste
    //  File: PasteButtonView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct PasteButtonView: View {
@State private var pastedText = "Nothing pasted track"
    @State private var pastedURL: URL?

    var body: some View {
        VStack(spacing: 20) {
            
            Text("Pasted Text: \(pastedText)")
            
            PasteButton(payloadType: String.self){
                items in
                if let firstItem = items.first{
                    pastedText = firstItem
                }
                    
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            
            Text("Pasted URL:\(pastedURL?.absoluteString ?? "None")")
            
            PasteButton(payloadType: URL.self){ items in
                if let firstURL = items.first{
                    pastedURL = firstURL
                }
            }
            .tint(.purple)

        }
        .padding()
    }
}

#Preview {
    PasteButtonView()
}
