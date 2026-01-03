// LESSON 2 — Build the Screen (Static UI Layout)
// Learn: SwiftUI basics, VStack, HStack, padding, and layout
// Goal: Create a beautiful soundboard screen (no buttons yet!)

import SwiftUI

// ===== Understanding UI vs Data =====
// In Lesson 1, we created SOUND DATA (the behind-the-scenes information)
// Now we're creating the USER INTERFACE (what the user SEES)
// The UI and data work together!

struct ContentView: View {
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

            // ===== Spacer =====
            Spacer()

            // ===== Soundboard Pads (3 columns) =====
            VStack(spacing: 12) {
                // Row 1: Three emoji pads
                HStack(spacing: 12) {
                    // Pad 1: Dog
                    Text("🐶")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 2: Cat
                    Text("🐱")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 3: Lion
                    Text("🦁")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }

                // Row 2: Three more emoji pads
                HStack(spacing: 12) {
                    // Pad 4: Car
                    Text("🚗")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 5: Fire Truck
                    Text("🚒")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 6: Elephant
                    Text("🐘")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }

                // Row 3: Three more emoji pads
                HStack(spacing: 12) {
                    // Pad 7: Piano
                    Text("🎹")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 8: Drums
                    Text("🥁")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)

                    // Pad 9: Pizza
                    Text("🍕")
                        .font(.system(size: 44))
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .background(Color(.systemGray5))
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal, 12)

            // ===== Now Playing Status =====
            VStack(spacing: 8) {
                Text("Now Playing:")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text("—")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.blue)
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal, 12)

            // ===== Spacer =====
            Spacer()
        }
        .padding(16)
        .background(Color(.systemBackground))
        .ignoresSafeArea(edges: .bottom)
    }
}

// ===== Preview (for seeing the app in Xcode) =====
#Preview {
    ContentView()
}

// ===== What You've Built =====
// A beautiful soundboard layout with:
// - A title at the top
// - 9 emoji pads in a 3x3 grid
// - A "Now Playing" display area
// - Proper padding and spacing
//
// Next lesson: We'll make these buttons actually tappable!
