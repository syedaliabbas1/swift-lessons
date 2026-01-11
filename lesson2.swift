import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Title section
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("My Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Three music sounds")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            Spacer()

            // Music pads
            HStack(spacing: 12) {
                Text("🥁")
                    .font(.system(size: 44))
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color(.systemGray5))
                    .cornerRadius(12)

                Text("🎸")
                    .font(.system(size: 44))
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color(.systemGray5))
                    .cornerRadius(12)

                Text("⌨️")
                    .font(.system(size: 44))
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(Color(.systemGray5))
                    .cornerRadius(12)
            }
            .padding(.horizontal, 12)

            // Status display
            VStack(spacing: 8) {
                Text("Now Playing:")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text("—")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.blue)
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal, 12)

            Spacer()
        }
        .padding(16)
        .background(Color(.systemBackground))
        .ignoresSafeArea(edges: .bottom)
    }
}

@main
struct SoundboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
