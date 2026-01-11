import SwiftUI

struct ContentView: View {
    @State var nowPlaying = "—"
    @State var selectedEmoji = ""

    var body: some View {
        VStack(spacing: 20) {
            // Title section
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("My Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Tap the buttons to play sounds")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            Spacer()

            // Interactive music pads with buttons (3x3 grid)
            VStack(spacing: 12) {
                // Row 1: Drums, Kick Drum, Melody
                HStack(spacing: 12) {
                    Button(action: {
                        selectedEmoji = "🥁"
                        nowPlaying = "🥁 Drums"
                    }) {
                        Text("🥁")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🥁" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🪘"
                        nowPlaying = "🪘 Kick Drum"
                    }) {
                        Text("🪘")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🪘" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🎵"
                        nowPlaying = "🎵 Melody"
                    }) {
                        Text("🎵")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🎵" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }

                // Row 2: Guitar, Synth, Piano
                HStack(spacing: 12) {
                    Button(action: {
                        selectedEmoji = "🎸"
                        nowPlaying = "🎸 Guitar"
                    }) {
                        Text("🎸")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🎸" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "⌨️"
                        nowPlaying = "⌨️ Synth"
                    }) {
                        Text("⌨️")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "⌨️" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🎹"
                        nowPlaying = "🎹 Piano"
                    }) {
                        Text("🎹")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🎹" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }

                // Row 3: Flute, Bell, Trumpet
                HStack(spacing: 12) {
                    Button(action: {
                        selectedEmoji = "🪈"
                        nowPlaying = "🪈 Flute"
                    }) {
                        Text("🪈")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🪈" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🔔"
                        nowPlaying = "🔔 Bell"
                    }) {
                        Text("🔔")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🔔" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }

                    Button(action: {
                        selectedEmoji = "🎺"
                        nowPlaying = "🎺 Trumpet"
                    }) {
                        Text("🎺")
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(selectedEmoji == "🎺" ? Color.blue.opacity(0.3) : Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }
            }
            .padding(.horizontal, 12)

            // Status display with feedback
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
