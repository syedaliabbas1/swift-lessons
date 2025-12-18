// How to print text to the console in Swift

print("Hello, Swift! 👋")
print("My name is John!")

// Variables vs Constants (var vs let)
var petName = "Milo"   // var can change
let school = "Harvard"     // let stays the same

print("My pet is \(petName).")
print("My school is \(school).")

petName = "Luna"
print("Now my pet is \(petName).")

// Types: String, Int, Double
let playerName: String = "Alice"
let age: Int = 11
let height: Double = 1.42

print("Name:", playerName)
print("Age:", age)
print("Height:", height)

// Basic Arithmetic
let a = 8
let b = 3

print("a + b =", a + b)
print("a - b =", a - b)
print("a * b =", a * b)
print("a / b =", a / b)  // whole number division

//For double division
let x = 8.0
let y = 3.0
print("x / y =", x / y)

// Strings + Interpolation (make sentences)
let name = "Emma"
let favouriteFood = "pizza 🍕"
let points = 12

print("Hi, my name is \(name).")
print("I love \(favouriteFood).")
print("I have \(points) points!")#

//Mini game
var score = 0
print("Score:", score)

score = score + 5
print("Score after bonus:", score)

score += 2   // short way to add
print("Score after +2:", score)

// Challenge: Create your own variables and print a message
let userName = "Sara"     
let userAge = 10          

print("Welcome \(userName)!")
print("Next year you will be \(userAge + 1). 🎂")


// Mini Player Card
let player = "Bob"
let favouriteEmoji = "⚽️"
var coins = 10
let bonusCoins = 5
let level = 2

coins += bonusCoins

print("----- PLAYER CARD -----")
print("Name: \(player)")
print("Favourite: \(favouriteEmoji)")
print("Level: \(level)")
print("Coins: \(coins)")
print("-----------------------")