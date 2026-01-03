// SOUNDBOARD APP — Complete Implementation
// This is an educational version of a soundboard app.
// It demonstrates SwiftUI, arrays, and audio playback.
//
// NOTE: In production apps, you would separate concerns more carefully.
// But for learning, we keep everything together so you can see how it works!

import SwiftUI
import AVFoundation

// ===== Data Model =====
// This struct defines what information each sound needs.
// Identifiable allows SwiftUI to track each sound uniquely.

struct Sound: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let filename: String  // Without .mp3 extension
}

// ===== Main App View =====

struct ContentView: View {
    // State variables for user interaction
    @State private var nowPlaying = "Tap a button!"
    @State private var audioPlayer: AVAudioPlayer?

    // Grid configuration: 3 columns
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    // All the sounds in the soundboard
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
            // ===== Header =====
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

            // ===== Status Display =====
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

            // ===== Sound Grid =====
            // ForEach creates a button for each sound in the array.
            // LazyVGrid arranges them in 3 columns.

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(sounds) { sound in
                    Button(action: {
                        // When user taps a button:
                        // 1. Update the display
                        nowPlaying = "\(sound.emoji) \(sound.name)"
                        // 2. Play the sound
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

            // ===== Control Buttons =====
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
                    // Pick a random sound and play it
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

    // ===== Audio Playback Function =====
    // This function handles loading and playing sound files.
    // For this educational project, it's kept in the View.
    // In larger apps, you'd move this to a separate helper class.

    private func playSound(filename: String) {
        // 1. Find the audio file in the app's resources
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("Error: Sound file not found: \(filename).mp3")
            print("Make sure the file exists in Resources folder!")
            return
        }

        do {
            // 2. Create an audio player with the file
            audioPlayer = try AVAudioPlayer(contentsOf: url)

            // 3. Prepare and play the sound
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
}

// ===== App Entry Point =====
// This is required to make this a complete, runnable app.
// You can use this directly in Xcode or in Swift Playgrounds.

@main
struct SoundboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// ===== Learning Notes =====
//
// 1. AUDIO FILES REQUIRED:
//    Place these MP3 files in your Xcode project's Resources folder:
//    dog.mp3, cat.mp3, lion.mp3, car.mp3, firetruck.mp3,
//    elephant.mp3, piano.mp3, drums.mp3, pizza.mp3
//
// 2. STATE MANAGEMENT:
//    @State allows the View to remember values (nowPlaying, audioPlayer)
//    When these change, SwiftUI automatically refreshes the UI
//
// 3. AUDIO PLAYBACK:
//    AVAudioPlayer is Apple's framework for playing sounds
//    We keep the player in @State so it doesn't get garbage collected
//
// 4. LOOPS AND ARRAYS:
//    ForEach is SwiftUI's way of repeating a View for each item in an array
//    This is much cleaner than copy-pasting the same button 9 times!
//
// 5. DESIGN NOTES:
//    This is an educational version, not production code.
//    In real apps, you might:
//    - Extract audio logic to a separate class
//    - Add sound effects for button taps
//    - Use a more sophisticated audio system
//    - Add haptic feedback
//
// Enjoy exploring and modifying this soundboard! 🎵
