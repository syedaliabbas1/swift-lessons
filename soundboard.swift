import SwiftUI
import AVFoundation

// MARK: - Data model for one sound button
struct SoundItem: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let file: String   // file name WITHOUT extension (e.g., "dog")
}

// MARK: - Sound player (plays audio files from Resources)
final class SoundPlayer {
    static let shared = SoundPlayer()
    private var player: AVAudioPlayer?

    func play(fileName: String, fileExtension: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
            print("❌ Missing sound file: \(fileName).\(fileExtension)")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("❌ Could not play sound:", error)
        }
    }
}

// MARK: - Main UI
struct ContentView: View {
    // Change count to 4 for 4 columns, etc.
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    // IMPORTANT: Add these files to Resources (exact names):
    // dog.mp3, cat.mp3, lion.mp3, car.mp3, firetruck.mp3, elephant.mp3, piano.mp3, drums.mp3, pizza.mp3
    private let sounds: [SoundItem] = [
        SoundItem(emoji: "🐶", name: "Dog",       file: "dog"),
        SoundItem(emoji: "🐱", name: "Cat",       file: "cat"),
        SoundItem(emoji: "🦁", name: "Lion",      file: "lion"),
        SoundItem(emoji: "🚗", name: "Car",       file: "car"),
        SoundItem(emoji: "🚒", name: "Firetruck", file: "firetruck"),
        SoundItem(emoji: "🐘", name: "Elephant",  file: "elephant"),
        SoundItem(emoji: "🎹", name: "Piano",     file: "piano"),
        SoundItem(emoji: "🥁", name: "Drums",     file: "drums"),
        SoundItem(emoji: "🍕", name: "Pizza",     file: "pizza")
    ]

    @State private var lastTapped = "Tap an emoji!"
    @State private var soundIsOn = true

    var body: some View {
        VStack(spacing: 16) {
            Text("Emoji Soundboard")
                .font(.largeTitle)
                .bold()

            Text(lastTapped)
                .font(.title2)

            Toggle("Sound On", isOn: $soundIsOn)
                .font(.title3)
                .padding(.horizontal)

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(sounds) { sound in
                    Button {
                        lastTapped = "You tapped: \(sound.name) \(sound.emoji)"
                        if soundIsOn {
                            SoundPlayer.shared.play(fileName: sound.file, fileExtension: "mp3")
                        }
                    } label: {
                        Text(sound.emoji)
                            .font(.system(size: 56))
                            .frame(maxWidth: .infinity, minHeight: 90)
                            .background(Color(.systemGray6))
                            .cornerRadius(16)
                    }
                }
            }
            .padding(.top, 8)

            HStack(spacing: 12) {
                Button("Clear") {
                    lastTapped = "Tap an emoji!"
                }
                .font(.title3)

                Button("Random") {
                    if let random = sounds.randomElement() {
                        lastTapped = "Random: \(random.name) \(random.emoji)"
                        if soundIsOn {
                            SoundPlayer.shared.play(fileName: random.file, fileExtension: "mp3")
                        }
                    }
                }
                .font(.title3)
            }
        }
        .padding()
    }
}

// MARK: - App entry point (required for a full SwiftUI app)
@main
struct EmojiSoundboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
