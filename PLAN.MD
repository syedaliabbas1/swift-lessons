# Soundboard App — Teaching Plan (Swift Playgrounds)

## Overall goal (what they’ll build by Lesson 4)

A **Soundboard app** in Swift Playgrounds:

- A title + emoji “pads” laid out like a grid  
- Tapping a pad shows **“Now Playing…”** feedback  
- Audio plays for the selected pad  
- Code is refactored from repetitive buttons into **Arrays + ForEach**  
  - Education-first design: logic stays in the `View`

---

## Lesson 1 — Swift Basics (Console): *"Your First Program"*

**Focus:** Swift fundamentals for complete beginners
**Students build:** A simple program that creates a sound and prints information about it

**Module:** Swift Module 1 – Swift

### What students type
- Creating variables with `var`
- Basic types: `String`, `Int`
- Using `print()` to see results
- String interpolation (building strings with data)
- Math operators (`+`, `-`, `*`) to modify values

### Teaching arc
- Start with the simplest possible program: *"Let's create and name one sound"*
- Introduce one variable at a time:
  - Sound name as a `String` (e.g., `"Drums"`)
  - Volume as an `Int` (e.g., `5`)
- Show how `print()` displays information
- Introduce string interpolation: *"Let's combine text and data"*
- Add math operators: *"Can we turn the volume up? Let's add 2 to it."*
- Mini challenge:
  - Create your own sound name
  - Change the volume using math

### Deliverable at end
- One small program that creates a sound and prints its details
  - Example: `let soundName = "Drums"` → Print `"Now Playing: Drums at volume 7"`

---

## Lesson 2 — UI Layout (Static UI): *“Build the Screen”*

**Focus:** App template + layout only (no real logic yet)  
**Students build:** A static app view with a title and 3 emojis (starter), then expand toward a soundboard layout  

**Module:** Swift Module 1 – Swift

### What students type
- SwiftUI App template basics
- `VStack`, `HStack`
- `Text`, `Image` (or just `Text` with emoji)
- `padding()` (and spacing)

### Teaching arc
- Explain **UI vs Data** (Frontend vs Backend) in simple terms
  (They'll feel why Lesson 1 mattered)
- Create the screen skeleton:
  - Big title: *"My Soundboard"*
  - Subtitle / instruction text
- Place 3 emoji "pads" (drums, bass, synth) as starter:
  - `Text("🥁")`, `Text("🎸")`, `Text("⌨️")`
  - *(Will expand to 9 in Lesson 4)*
- Make it look like an app:
  - Padding
  - Alignment
  - Consistent sizing (`frame`)

### Deliverable at end
- A clean **static interface** that looks like a soundboard screen  
  (Even if emojis aren’t tappable yet)

---

## Lesson 3 — Interactivity (Logic): *“Make It Respond”*

**Focus:** Buttons + state so it “works visually”  
**Students build:** Tapping changes text/color/background and shows **“Now Playing”**  

**Module:** Swift Module 1 – Swift

### What students type
- `Button`
- `@State`
- `Bool` + `if/else` logic  
  *(or `String` state for “Now Playing”)*

### Teaching arc
- Introduce **state**: *"The app remembers something"*
- Convert emoji pads into `Button`s
- Add one simple feedback mechanism:
  - `@State var nowPlaying = "—"`
  - Tapping updates it: `"Now Playing: 🥁 Drums"`
- Add one "fun" visual state:
  - Background changes on tap **or**
  - Highlight the selected emoji

### Deliverable at end
- A soundboard that **feels interactive**  
  - Tap emoji → UI updates immediately  
  - (Still no audio yet)

---

## Lesson 4 — Capstone (Arrays + Audio): *"Music Soundboard"*

**Focus:** Remove repetition using Arrays / ForEach + add audio playback
**Students build:** A working music production soundboard with 9 instruments in a 3×3 grid

**Module:** Swift Module 1 – Swift

### What students type
- `Array`
- `ForEach`
- `LazyVGrid` (for a 3×3 button grid)
- Lightweight `struct` model for each sound
  (Simple + readable)
- `AVAudioPlayer` (kept inside the `View` for education)

### Teaching arc
- Show the problem:
  *"Our code repeats the same Button many times"*
- Introduce an array of 9 musical sounds:
  - Each sound has: emoji, name, filename
  - **9 instruments:** drums (🥁), kick drum (🪘), hi-hat (🎵), bass (🎸), synth (⌨️), piano (🎹), guitar (🎤), bell (🔔), trumpet (🎺)
- Generate UI from data:
  - `LazyVGrid` with 3 columns → creates 3×3 grid
  - `ForEach(sounds)`
- Add audio:
  - Tap a pad → play sound file
  - Multiple sounds can play at the same time (create music!)
  - Update `nowPlaying` for feedback

### Education-first constraints
- No singleton manager class
- No delegate architecture
- Keep the "play sound" function close to the buttons in the same `View`
- Emphasize:
  > "This is best for learning. Later, you'll learn how big apps separate files."

### Deliverable at end
- A complete music production soundboard:
  - **3×3 grid** (9 instrument pads) generated from an array
  - Tap multiple pads to play sounds together
  - Real audio playback + visual feedback
