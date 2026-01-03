# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an educational Swift programming course repository containing lesson files and a practical project. The content is designed for learners to work through progressive Swift concepts from fundamentals through SwiftUI development.

## Repository Structure

- **Lesson Files** (`lesson1.swift` through `lesson4.swift`): Progressive Soundboard App Tutorial
  - `lesson1.swift`: **Sound Data** - Swift fundamentals (variables, constants, data types, string interpolation). Students create sound definitions using console output.
  - `lesson2.swift`: **Build the Screen** - SwiftUI basics (VStack, HStack, Text, padding). Students create a static soundboard UI with 9 emoji pads.
  - `lesson3.swift`: **Make It Respond** - Interactivity (Button, @State, conditionals). Students make buttons respond to taps and display "Now Playing" feedback.
  - `lesson4.swift`: **Capstone Project** - Arrays, ForEach, LazyVGrid, and AVAudioPlayer. Students build a complete, working soundboard with real audio playback.

- **soundboard.swift**: Complete, runnable Soundboard application. Educational implementation of the capstone project with learning notes.

## The Soundboard Teaching Arc

Each lesson builds directly toward a complete soundboard app:
1. Define the sound data (Lesson 1 - Console)
2. Create the visual layout (Lesson 2 - Static UI)
3. Add interactivity (Lesson 3 - State & Buttons)
4. Refactor with arrays and add audio (Lesson 4 - Complete App)

## Lesson Content Characteristics

Each lesson file:
- Contains extensive inline comments explaining every concept
- Provides runnable Swift code with immediate, visible feedback
- Builds progressively toward the final soundboard app
- Includes a final section with learning notes and challenge ideas
- Uses consistent visual design across all 4 lessons

## Execution Environment

**Swift Playgrounds (macOS) is the primary execution environment for all lessons:**
- Copy each lesson into a new Swift Playgrounds document
- Run with Cmd+Enter to see immediate output
- For Lessons 1-3: Output appears in the Playgrounds console or preview panel
- For Lesson 4 & soundboard.swift: Preview shows the full UI in real-time

**Alternative: Xcode Projects**
- Create a new iOS app project in Xcode
- Copy lesson code into `ContentView.swift`
- Run on iOS Simulator to see full app experience
- For audio playback: Add MP3 files to the project's Resources folder

## Soundboard Project Implementation (lesson4.swift & soundboard.swift)

Both the capstone lesson and soundboard application require:
- Audio files (MP3 format): `dog.mp3`, `cat.mp3`, `lion.mp3`, `car.mp3`, `firetruck.mp3`, `elephant.mp3`, `piano.mp3`, `drums.mp3`, `pizza.mp3`
- Files must be added to Xcode project's Resources folder (if running as a full app)
- Files must be added to the application target

Educational design choices:
- Uses `Sound` struct (not `SoundItem`) conforming to `Identifiable` for clean data modeling
- Audio playback logic is kept **inline in the View** (not in a separate class) for learning purposes
- Comment explains that in production apps, audio logic would be extracted to a separate class
- UI uses `LazyVGrid` with 3 columns for responsive, easy-to-read grid layout
- Demonstrates error handling for missing audio files with helpful console messages
- Each button is generated from the sounds array using `ForEach` - no code repetition

## Content Philosophy

Lessons follow a hands-on, exploratory learning approach:
- Code is meant to be typed manually, not copied (builds muscle memory)
- Learners should modify values and observe output to understand behavior
- Execution and experimentation is encouraged during learning
- Error messages are valuable learning tools

## When Editing Lesson Content

- Preserve inline comments - they are essential to the learning experience
- Maintain the progressive difficulty structure across lessons
- Ensure code examples remain runnable and produce immediate output
- Keep examples concise and focused on a single concept
- Avoid introducing advanced patterns that aren't explained in the lesson

## When Editing the Lessons or Soundboard

### Maintain the Educational Progression
- Ensure each lesson explicitly builds on concepts from previous lessons
- Lesson 1 teaches data, Lesson 2 adds UI, Lesson 3 adds interactivity, Lesson 4 optimizes with arrays
- Keep code complexity appropriate to the lesson level

### Education-First Design
- Keep audio playback logic **inline in the View**, not in separate classes
- Include comments explaining why this is done for learning (not production)
- Avoid introducing patterns before they're explained in the curriculum
- Make code easy to read and modify for learning purposes

### Comments and Documentation
- Use section headers (===== Part Name =====) to organize lessons
- Include "What You've Built" or "Learning Notes" sections at the end of each lesson
- Explain the "why" behind patterns, not just the "what"
- Include challenge ideas for students to extend their learning

### Audio File References
- Always use `filename` without extension when storing in struct (e.g., "dog" not "dog.mp3")
- Include clear comments about where to place audio files
- Provide helpful error messages if files are missing
- The 9 sounds are consistent across all lessons: dog, cat, lion, car, firetruck, elephant, piano, drums, pizza
