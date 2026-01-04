import SwiftUI
import AVFoundation

struct Sound: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let filename: String
}

struct ContentView: View {
    @State var nowPlaying = "—"
    @State var audioPlayer: AVAudioPlayer?

    let sounds: [Sound] = [
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

    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("🎵")
                    .font(.system(size: 48))

                Text("My Soundboard")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Tap the buttons to play sounds!")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.top, 20)

            Spacer()

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

    func playSound(filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("Sound file not found: \(filename).mp3")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
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
