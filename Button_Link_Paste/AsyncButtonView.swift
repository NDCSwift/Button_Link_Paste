//
    // Project: Button_Link_Paste
    //  File: AsyncButtonView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct AsyncButtonView: View {
    @State private var statusMessage = "Ready"

    var body: some View {
        VStack(spacing: 20) {
            Text(statusMessage)
                .font(.headline)

            Button("Simulate Network Call") {
                Task { // Use Task to perform async operation
                    statusMessage = "Loading..."
                    await performAsyncAction()
                    statusMessage = "Data Loaded!"
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }

    func performAsyncAction() async { // Async function
        try? await Task.sleep(for: .seconds(2)) // Simulate delay
        print("Async action completed!")
    }
}


#Preview {
    AsyncButtonView()
}
