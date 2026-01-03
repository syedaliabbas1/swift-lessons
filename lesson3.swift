// LESSON 3 — Make It Respond (Interactivity with State)
// Learn: @State, Button, and User Interactions
// Goal: Make the soundboard respond when you tap the buttons!

import SwiftUI

// ===== What is State? =====
// State is a value that can CHANGE while the app is running.
// When state changes, SwiftUI automatically updates the screen!
// We use @State to declare variables that can change.

struct ContentView: View {
    // ===== State Variables =====
    // These variables can change when the user taps buttons
    // @State tells SwiftUI to watch them and update the screen

    @State var nowPlaying = "—"  // Shows what's currently playing
    @State var selectedEmoji = ""  // The emoji the user tapped
    @State var selectedColor = Color(.systemGray5)  // Background color

    var body: some View {
        VStack(spacing: 20) {
            // ===== Title Section =====
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

            // ===== Soundboard Buttons =====
            VStack(spacing: 12) {
                // Row 1: Dog, Cat, Lion
                HStack(spacing: 12) {
                    // Button 1: Dog
                    Button(action: {
                        // This code runs when the user taps the button
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

                    // Button 2: Cat
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

                    // Button 3: Lion
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

                // Row 2: Car, Fire Truck, Elephant
                HStack(spacing: 12) {
                    // Button 4: Car
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

                    // Button 5: Fire Truck
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

                    // Button 6: Elephant
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

                // Row 3: Piano, Drums, Pizza
                HStack(spacing: 12) {
                    // Button 7: Piano
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

                    // Button 8: Drums
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

                    // Button 9: Pizza
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

            // ===== Now Playing Status =====
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
// An INTERACTIVE soundboard where:
// - Each emoji is now a tappable Button
// - Tapping a button updates the "Now Playing" text
// - The selected button highlights in blue
// - The app REMEMBERS what you tapped using @State
//
// How it works:
// 1. User taps a Button
// 2. The code inside the Button's action { } runs
// 3. The @State variables change
// 4. SwiftUI detects the change and updates the screen
//
// Next lesson: We'll remove the repetition using Arrays,
// and add REAL audio playback!
