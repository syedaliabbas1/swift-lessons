// LESSON 1 — Sound Data (Console Output)
// Learn: Variables, Constants, Types, and String Interpolation
// Goal: Create sound definitions we'll use in the soundboard app later!

print("🎵 Welcome to the Soundboard App Tutorial! 🎵")
print("")

// ===== Part 1: What is a Soundboard? =====
// A soundboard is an app where you tap buttons to play sounds!
// First, we'll define our sounds using variables.

print("--- Part 1: Your First Sound ---")
print("")

// Create a sound using a VARIABLE (can change)
var soundName = "Dog Bark"
var volumeLevel = 7

print("Sound: \(soundName)")
print("Volume: \(volumeLevel)")
print("")

// Variables can be changed!
print("Changing the volume...")
volumeLevel = 9
print("Sound: \(soundName)")
print("Volume: \(volumeLevel)")
print("")

// ===== Part 2: Constants vs Variables =====

print("--- Part 2: Variables (var) vs Constants (let) ---")
print("")

// Use LET for things that never change
let appName = "My Soundboard"

// Use VAR for things that can change
var currentSound = "None"

print("App name: \(appName)")  // This never changes
print("Current sound: \(currentSound)")  // This can change

currentSound = "Dog Bark"
print("Now playing: \(currentSound)")
print("")

// ===== Part 3: Different Data Types =====

print("--- Part 3: Data Types ---")
print("")

// String: text (use quotes)
let emoji1: String = "🐶"
let soundFile1: String = "dog.mp3"

// Int: whole numbers
let duration: Int = 3

// Double: decimal numbers
let frequency: Double = 440.5

print("Emoji: \(emoji1)")
print("Sound file: \(soundFile1)")
print("Duration: \(duration) seconds")
print("Frequency: \(frequency) Hz")
print("")

// ===== Part 4: Create Your Soundboard Data =====

print("--- Part 4: Building Soundboard Data ---")
print("")

// Sound 1: Dog
var dogName = "Dog"
var dogEmoji = "🐶"
var dogVolume = 7

// Sound 2: Cat
var catName = "Cat"
var catEmoji = "🐱"
var catVolume = 5

// Sound 3: Lion
var lionName = "Lion"
var lionEmoji = "🦁"
var lionVolume = 9

print("--- My Soundboard Sounds ---")
print("")
print("Sound 1: \(dogEmoji) \(dogName) - Volume \(dogVolume)")
print("Sound 2: \(catEmoji) \(catName) - Volume \(catVolume)")
print("Sound 3: \(lionEmoji) \(lionName) - Volume \(lionVolume)")
print("")

// ===== Part 5: Practice: Print "Now Playing" Messages =====

print("--- Part 5: Now Playing System ---")
print("")

// Pretend the user tapped the dog button
print("Tapping \(dogEmoji)...")
print("Now Playing: \(dogEmoji) \(dogName) at volume \(dogVolume)")
print("")

// Pretend the user tapped the lion button
print("Tapping \(lionEmoji)...")
print("Now Playing: \(lionEmoji) \(lionName) at volume \(lionVolume)")
print("")

// ===== Challenge Time! =====

print("--- Try This! ---")
print("")
print("1. Change dogVolume to 10 and run again")
print("2. Add a new sound variable for a Cat")
print("3. Create a 'Now Playing' message for your new sound")
print("")
