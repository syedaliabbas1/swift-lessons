// LESSON 4 — Capstone Project (Arrays + ForEach + Real Audio)
// Learn: Arrays, ForEach, LazyVGrid, and AVAudioPlayer
// Goal: Build a complete, working soundboard with NO repetition!

import SwiftUI
import AVFoundation

// ===== Part 1: Define the Sound Data =====
// A Sound is a struct (a template) that holds all information about one sound.
// Identifiable means SwiftUI can keep track of which sound is which.

struct Sound: Identifiable {
    let id = UUID()  // Unique identifier for this sound
    let emoji: String
    let name: String
    let filename: String  // e.g., "dog" (without .mp3 extension)
}

// ===== Part 2: Create the App =====

struct ContentView: View {
    // ===== State for Interactivity =====
    @State var nowPlaying = "—"
    @State var audioPlayer: AVAudioPlayer?

    // ===== The Sounds Array =====
    // This array holds ALL the sounds in our soundboard.
    // Instead of 9 separate variables, we have ONE array!
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

    // ===== Grid Configuration =====
    // LazyVGrid creates a responsive grid layout.
    // This creates 3 columns that adapt to the screen size.
    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    var body: some View {
        VStack(spacing: 20) {
            // ===== Title Section =====
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

            // ===== Soundboard Grid =====
            // This is where the magic happens!
            // ForEach generates a button for EACH sound in the array.
            // No more copy-pasting code 9 times!

            LazyVGrid(columns: columns, spacing: 12) {
                // ForEach loops through each Sound in the sounds array
                ForEach(sounds) { sound in
                    // For each sound, create a Button
                    Button(action: {
                        // When tapped, update the display and play the sound
                        nowPlaying = "\(sound.emoji) \(sound.name)"
                        playSound(filename: sound.filename)
                    }) {
                        // The button shows the emoji
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

            // ===== Now Playing Display =====
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

    // ===== Audio Playback Function =====
    // This function plays a sound file when called.
    // We keep it in the View for this educational project.
    // In real apps, you might move this to a separate class.

    func playSound(filename: String) {
        // Try to find the audio file in the app's resources
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("Sound file not found: \(filename).mp3")
            return
        }

        do {
            // Create an AVAudioPlayer with the audio file
            audioPlayer = try AVAudioPlayer(contentsOf: url)

            // Prepare and play the sound
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Could not play sound: \(error.localizedDescription)")
        }
    }
}

// ===== App Entry Point =====
// This makes the app runnable in Swift Playgrounds
@main
struct SoundboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// ===== What You've Built =====
// A COMPLETE, WORKING soundboard with:
// - A Sound struct to organize data
// - An array of 9 sounds
// - ForEach to generate buttons from the array
// - LazyVGrid for a responsive 3-column layout
// - Real audio playback with AVAudioPlayer
// - State management for "Now Playing" feedback
//
// ===== The Power of Arrays + ForEach =====
// BEFORE (Lesson 3):
//   - 9 separate Button definitions (lots of repetition!)
//   - 9 separate tap actions (copy-pasted code)
//   - Hard to add new sounds
//
// AFTER (Lesson 4):
//   - 1 array definition
//   - 1 Button template in ForEach
//   - Easy to add sounds: just add to the array!
//
// This is a fundamental pattern in app development.
// Whenever you see repetition, think: "Can I use an array?"
//
// ===== How to Use This in Swift Playgrounds =====
// 1. Copy this entire lesson into Swift Playgrounds
// 2. Add audio files (dog.mp3, cat.mp3, etc.) to Resources
// 3. Run the playground
// 4. Try tapping different sound buttons
// 5. Experiment: Add more sounds to the array!
//
// ===== Try These Challenges =====
// 1. Add a new sound to the array (pick any emoji and audio file)
// 2. Change the grid from 3 columns to 2 or 4 columns
// 3. Modify the button appearance (color, size, etc.)
// 4. Add an emoji label below each button showing the sound name
//
// You've completed the course! Congratulations! 🎉
