import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("My Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Tap the emoji buttons to play sounds")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            Spacer()

            VStack(spacing: 12) {
                HStack(spacing: 12) {
                    Text("🐶")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🐱")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🦁")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }

                HStack(spacing: 12) {
                    Text("🚗")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🚒")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🐘")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }

                HStack(spacing: 12) {
                    Text("🎹")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🥁")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    Text("🍕")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal, 12)

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
