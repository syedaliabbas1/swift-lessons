import SwiftUI

struct ContentView: View {
    @State var nowPlaying = "—"
    @State var selectedEmoji = ""
    @State var selectedColor = Color(.systemGray5)

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
                    Button(action: {
                        selectedEmoji = "🐶"
                        nowPlaying = "🐶 Dog Bark"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🐶")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🐶" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🐱"
                        nowPlaying = "🐱 Cat Meow"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🐱")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🐱" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🦁"
                        nowPlaying = "🦁 Lion Roar"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🦁")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🦁" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }

                HStack(spacing: 12) {
                    Button(action: {
                        selectedEmoji = "🚗"
                        nowPlaying = "🚗 Car Horn"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🚗")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🚗" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🚒"
                        nowPlaying = "🚒 Siren"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🚒")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🚒" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🐘"
                        nowPlaying = "🐘 Trumpet"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🐘")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🐘" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }

                HStack(spacing: 12) {
                    Button(action: {
                        selectedEmoji = "🎹"
                        nowPlaying = "🎹 Piano Note"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🎹")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🎹" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🥁"
                        nowPlaying = "🥁 Drum Beat"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🥁")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🥁" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🍕"
                        nowPlaying = "🍕 Chewing"
                        selectedColor = Color(.systemGray4)
                    }) {
                        Text("🍕")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🍕" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }
            }
            .padding(.horizontal, 12)

            VStack(spacing: 8) {
                Text("Now Playing:")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text(nowPlaying)
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
