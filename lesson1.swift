print("🎵 Welcome to the Soundboard App Tutorial! 🎵")
print("")

print("--- Part 1: Your First Sound ---")
print("")

var soundName = "Dog Bark"
var volumeLevel = 7

print("Sound: \(soundName)")
print("Volume: \(volumeLevel)")
print("")

print("Changing the volume...")
volumeLevel = 9
print("Sound: \(soundName)")
print("Volume: \(volumeLevel)")
print("")

print("--- Part 2: Variables (var) vs Constants (let) ---")
print("")

let appName = "My Soundboard"
var currentSound = "None"

print("App name: \(appName)")
print("Current sound: \(currentSound)")

currentSound = "Dog Bark"
print("Now playing: \(currentSound)")
print("")

print("--- Part 3: Data Types ---")
print("")

let emoji1: String = "🐶"
let soundFile1: String = "dog.mp3"
let duration: Int = 3
let frequency: Double = 440.5

print("Emoji: \(emoji1)")
print("Sound file: \(soundFile1)")
print("Duration: \(duration) seconds")
print("Frequency: \(frequency) Hz")
print("")

print("--- Part 4: Building Soundboard Data ---")
print("")

var dogName = "Dog"
var dogEmoji = "🐶"
var dogVolume = 7

var catName = "Cat"
var catEmoji = "🐱"
var catVolume = 5

var lionName = "Lion"
var lionEmoji = "🦁"
var lionVolume = 9

print("--- My Soundboard Sounds ---")
print("")
print("Sound 1: \(dogEmoji) \(dogName) - Volume \(dogVolume)")
print("Sound 2: \(catEmoji) \(catName) - Volume \(catVolume)")
print("Sound 3: \(lionEmoji) \(lionName) - Volume \(lionVolume)")
print("")

print("--- Part 5: Now Playing System ---")
print("")

print("Tapping \(dogEmoji)...")
print("Now Playing: \(dogEmoji) \(dogName) at volume \(dogVolume)")
print("")

print("Tapping \(lionEmoji)...")
print("Now Playing: \(lionEmoji) \(lionName) at volume \(lionVolume)")
print("")

print("--- Try This! ---")
print("")
print("1. Change dogVolume to 10 and run again")
print("2. Add a new sound variable for a Cat")
print("3. Create a 'Now Playing' message for your new sound")
print("")
