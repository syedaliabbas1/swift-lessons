//Part A — SwiftUI basics
//Your first SwiftUI screen

//This brings in SwiftUI, Apple’s toolkit for making app screens.
import SwiftUI

//We’re creating a “screen” called ContentView.
//: View means: “This is something SwiftUI can show on the screen.”
//Every SwiftUI view must describe what it looks like in body.
//some View means: “I will return a SwiftUI view (something visual).”
struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI! 👋")  //show text on screen 
            .font(.largeTitle)      //make the font big
            .padding()              //add space around the text
    }
}

//Result: A simple screen with a big “Hello” message.

//Stacks (VStack / HStack) to lay things out
//VStack stacks things vertically (top to bottom).
//spacing: 16 means there will be 16 points of space between items.
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("My App")          //Title
                .font(.largeTitle)  //big font

            HStack(spacing: 12) {    //HStack stacks things horizontally (left to right)
                Text("🐶")          //Object 1
                Text("🍕")          //Object 2
                Text("⚽️")          //Object 3
            }
            .font(.system(size: 48))    //make emojis big
        }
        .padding()        //add space around the whole VStack   
    }
}

//Result: Title on top, emojis in a row underneath.


//Part B — Interactivity with @State
//@State (a value that can change on the screen)

//score starts at 0.

//@State is the magic that says: “If this value changes, update the screen automatically.”

//Without @State, the screen wouldn’t refresh when score changes.
import SwiftUI

struct ContentView: View {
    @State private var score = 0    // starts at 0

    var body: some View {           
        VStack(spacing: 16) {       //stack items vertically
            Text("Score: \(score)") //show current score
                .font(.largeTitle)  //big font

            Button("Add 1 ⭐️") {    //button to add 1 to score
                score += 1          // increase score by 1
            }
            .font(.title2)         //make button text bigger
        }
        .padding()                 //add space around the whole VStack
    }
}

//Result: Tap the button → score goes up on screen.

//“Reset” button + simple rules
import SwiftUI

struct ContentView: View {
    @State private var score = 0                        // starts at 0
    @State private var message = "Tap to start!"        // initial message

    var body: some View {
        VStack(spacing: 16) {                           //stack items vertically
            Text("Score: \(score)")                     //show current score
                .font(.largeTitle)                      //big font

            Text(message)
                .font(.title2)                          //message under score

            Button("Tap me") {                          //button to add 1 to score  
                score += 1
                if score == 5 {
                    message = "Nice! 5 taps 🎉"         //Every tap increases score.
                } else if score == 10 {                 //When score hits exactly 5, message changes.
                    message = "Wow! 10 taps 🚀"        //When it hits exactly 10, message changes again.
                }
            }
            .font(.title2)

            Button("Reset") {
                score = 0
                message = "Tap to start!"
            }
        }
        .padding()
    }
}

//Result: A tiny game: tap → score increases → special messages at 5 and 10 → reset button.

//Part C — Mini Project (Capstone): Emoji “Soundboard” Grid (tap an emoji)

//This version teaches the grid UI + state + “last tapped”.

//Emoji Grid Soundboard (no audio yet — perfect for class)
import SwiftUI

struct Sound: Identifiable {
    let id = UUID()         // unique ID for each sound, UUID() makes a unique ID automatically, so SwiftUI can track each item.
    let emoji: String       // emoji representing the sound
    let name: String        // name of the emoji/sound
}

struct ContentView: View {
    // 3 columns in the grid
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 3)

    // Our “soundboard buttons”
    private let sounds: [Sound] = [
        Sound(emoji: "🐶", name: "Dog"),
        Sound(emoji: "🐱", name: "Cat"),
        Sound(emoji: "🦁", name: "Lion"),
        Sound(emoji: "🚗", name: "Car"),
        Sound(emoji: "🚒", name: "Firetruck"),
        Sound(emoji: "⚽️", name: "Football"),
        Sound(emoji: "🎹", name: "Piano"),
        Sound(emoji: "🥁", name: "Drums"),
        Sound(emoji: "🍕", name: "Pizza")
    ]

    @State private var lastTapped = "Tap an emoji!"

    var body: some View {
        VStack(spacing: 16) {
            Text("Emoji Soundboard")
                .font(.largeTitle)
                .bold()

            Text(lastTapped)
                .font(.title2)

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(sounds) { sound in
                    Button {
                        lastTapped = "You tapped: \(sound.name) \(sound.emoji)"
                        // Later: play sound here
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

            Button("Clear") {
                lastTapped = "Tap an emoji!"
            }
            .font(.title3)
        }
        .padding()
    }
}

//Part D (Optional “Level Up”): Add real audio (AVFoundation)

//Adding audio files into the Playgrounds Resources folder (e.g. dog.wav, cat.wav), this will play them.

//Add this SoundPlayer helper
import AVFoundation

final class SoundPlayer {
    static let shared = SoundPlayer()
    private var player: AVAudioPlayer?

    func play(fileName: String, fileExtension: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
            print("Missing file: \(fileName).\(fileExtension)")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Could not play sound:", error)
        }
    }
}

//Update your Sound model to include a file name

struct Sound: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let file: String   // e.g. "dog"
}

//Example sounds list (match your filenames)

private let sounds: [Sound] = [
    Sound(emoji: "🐶", name: "Dog", file: "dog"),
    Sound(emoji: "🐱", name: "Cat", file: "cat"),
    Sound(emoji: "🚗", name: "Car", file: "car")
]

//Play sound inside the button tap

Button {
    lastTapped = "You tapped: \(sound.name) \(sound.emoji)"
    SoundPlayer.shared.play(fileName: sound.file, fileExtension: "wav")
} label: {
    Text(sound.emoji)
        .font(.system(size: 56))
        .frame(maxWidth: .infinity, minHeight: 90)
        .background(Color(.systemGray6))
        .cornerRadius(16)
}