import SwiftUI

struct ButtonShowcaseView: View {
    @State private var pastedText: String = ""

    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color(.systemGray6), Color(.systemGray4)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 40) {
                Text("🧩 SwiftUI Buttons")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundStyle(.primary)
                    .padding(.top)

                VStack(spacing: 28) {
                    // Standard Button
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        HStack {
                            Image(systemName: "hand.tap.fill")
                            Text("Tap Me")
                                .fontWeight(.semibold)
                        }
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.gradient)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                    }

                    // Link Button
                    Link(destination: URL(string: "https://apple.com")!) {
                        HStack {
                            Image(systemName: "link")
                            Text("Visit Apple")
                                .fontWeight(.semibold)
                        }
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green.gradient)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                    }

                    // Paste Button
                    VStack(spacing: 10) {
                        PasteButton(payloadType: String.self) { strings in
                            if let string = strings.first {
                                pastedText = string
                            }
                        }
                        .labelStyle(.iconOnly)
                        .frame(width: 60, height: 60)
                        .background(Color.orange.gradient)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                        Text(pastedText.isEmpty ? "Paste something!" : "📋 \"\(pastedText)\"")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(30)
                .shadow(radius: 20)
                .padding(.horizontal, 20)

                Spacer()
            }
            .padding(.top, 40)
        }
    }
    
}

#Preview {
    ButtonShowcaseView()
        .previewDevice("iPhone 15")
}
