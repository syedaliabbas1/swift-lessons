import SwiftUI
import AVFoundation

// Each sound has data: emoji, name, and audio filename
struct Sound: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let filename: String
}

struct ContentView: View {
    @State var nowPlaying = "—"
    @State var audioPlayers: [AVAudioPlayer] = []

    // Array of music production sounds
    let sounds: [Sound] = [
        Sound(emoji: "🥁", name: "Drums", filename: "drums"),
        Sound(emoji: "🪘", name: "Kick Drum", filename: "kick"),
        Sound(emoji: "🎵", name: "Melody", filename: "melody"),
        Sound(emoji: "🎸", name: "Guitar", filename: "guitar"),
        Sound(emoji: "⌨️", name: "Synth", filename: "synth"),
        Sound(emoji: "🎹", name: "Piano", filename: "piano"),
        Sound(emoji: "🪈", name: "Flute", filename: "flute"),
        Sound(emoji: "🔔", name: "Bell", filename: "bell"),
        Sound(emoji: "🎺", name: "Trumpet", filename: "trumpet"),
    ]

    // Grid layout with 3 columns
    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    var body: some View {
        VStack(spacing: 20) {
            // Title section
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("Music Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Create music - tap multiple sounds together!")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            Spacer()

            // Generate buttons from sounds array
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(sounds) { sound in
                    Button(action: {
                        nowPlaying = "\(sound.emoji) \(sound.name)"
                        playSound(filename: sound.filename)
                    }) {
                        Text(sound.emoji)
                            .font(.system(size: 44))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }
            }
            .padding(.horizontal, 12)

            // Status display
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

    // Play audio file - multiple sounds can play at once
    func playSound(filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("Sound file not found: \(filename).mp3")
            return
        }

        do {
            let player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
            audioPlayers.append(player)
        } catch {
            print("Could not play sound: \(error.localizedDescription)")
        }
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
