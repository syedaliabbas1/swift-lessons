import SwiftUI
import AVFoundation

struct Sound: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let filename: String
}

struct ContentView: View {
    @State private var nowPlaying = "Tap a button!"
    @State private var audioPlayer: AVAudioPlayer?

    private let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    private let sounds: [Sound] = [
        Sound(emoji: "🐶", name: "Dog", filename: "dog"),
        Sound(emoji: "🐱", name: "Cat", filename: "cat"),
        Sound(emoji: "🦁", name: "Lion", filename: "lion"),
        Sound(emoji: "🚗", name: "Car", filename: "car"),
        Sound(emoji: "🚒", name: "Firetruck", filename: "firetruck"),
        Sound(emoji: "🐘", name: "Elephant", filename: "elephant"),
        Sound(emoji: "🎹", name: "Piano", filename: "piano"),
        Sound(emoji: "🥁", name: "Drums", filename: "drums"),
        Sound(emoji: "🍕", name: "Pizza", filename: "pizza"),
    ]

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("Emoji Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Tap the buttons to play sounds")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            VStack(spacing: 6) {
                Text("Now Playing:")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text(nowPlaying)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            }
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .cornerRadius(12)

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(sounds) { sound in
                    Button(action: {
                        nowPlaying = "\(sound.emoji) \(sound.name)"
                        playSound(filename: sound.filename)
                    }) {
                        Text(sound.emoji)
                            .font(.system(size: 48))
                            .frame(maxWidth: .infinity)
                            .frame(height: 90)
                            .background(Color(.systemGray5))
                            .cornerRadius(12)
                    }
                }
            }

            HStack(spacing: 12) {
                Button(action: {
                    nowPlaying = "Tap a button!"
                }) {
                    Text("Clear")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(Color(.systemGray3))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Button(action: {
                    if let randomSound = sounds.randomElement() {
                        nowPlaying = "\(randomSound.emoji) \(randomSound.name) (Random!)"
                        playSound(filename: randomSound.filename)
                    }
                }) {
                    Text("Random")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }

            Spacer()
        }
        .padding(16)
    }

    private func playSound(filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("Error: Sound file not found: \(filename).mp3")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
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
