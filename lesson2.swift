//Boolean, True or False
let isHappy = true
let hasHomework = false

print("Is happy:", isHappy)
print("Has homework:", hasHomework)

//Comparisons (==, !=, >, <, >=, <=)
let myScore = 12
let targetScore = 10

print(myScore == targetScore)  // false
print(myScore != targetScore)  // true
print(myScore > targetScore)   // true
print(myScore <= targetScore)  // false

//Conditional Statements
let temperature = 9

if temperature < 10 {
    print("Wear a coat 🧥")
} else {
    print("A hoodie is fine 🙂")
}

//else if (more than 2 choices)
let dayOfWeek = "Saturday"
if dayOfWeek == "Saturday" || dayOfWeek == "Sunday" {
    print("It's the weekend! 🎉")
} else if dayOfWeek == "Friday" {
    print("Almost the weekend! 😄")
} else {
    print("It's a weekday. Keep going! 💪")
}

//AND / OR / NOT (&&, ||, !)
let hasTicket = true
let isVIP = false

if hasTicket && isVIP {
    print("Welcome to the VIP area ⭐️")
} else if hasTicket || isVIP {
    print("Welcome in! ✅")
} else {
    print("Sorry, no entry ❌")
}

//Not operator:
let isRaining = true

if !isRaining {
    print("No umbrella needed 😎")
} else {
    print("Take an umbrella ☔️")
}

//Mini game with random numbers
let dice = Int.random(in: 1...6)
print("You rolled:", dice)

//Mini Activity: Lucky Number Checker
let luckyNumber = 7
let myNumber = Int.random(in: 1...10)

print("My number is \(myNumber)")

if myNumber == luckyNumber {
    print("LUCKY! 🎉")
} else {
    print("Not lucky this time, Try again 😅")
}


//Guess the Number Game
let secretNumber = Int.random(in: 1...10)
let guess = 6   // change this guess and run again!

print("Secret number is between 1 and 10.")
print("Your guess:", guess)

if guess == secretNumber {
    print("Correct! 🎉 The secret was \(secretNumber).")
} else if guess < secretNumber {
    print("Too low! ⬆️ The secret was \(secretNumber).")
} else {
    print("Too high! ⬇️ The secret was \(secretNumber).")
}

//Fun Mini Project: Rock–Paper–Scissors (simple version)
//We use numbers: 0 = Rock, 1 = Paper, 2 = Scissors

let computer = Int.random(in: 0...2)
let player = 2  // change this: 0, 1, or 2

func nameFor(_ move: Int) -> String {
    if move == 0 { return "Rock 🪨" }
    if move == 1 { return "Paper 📄" }
    return "Scissors ✂️"
}

print("Player chose:", nameFor(player))
print("Computer chose:", nameFor(computer))

if player == computer {
    print("It’s a tie! 🤝")
} else if (player == 0 && computer == 2) ||
          (player == 1 && computer == 0) ||
          (player == 2 && computer == 1) {
    print("Player wins! 🎉")
} else {
    print("Computer wins! 🤖")
}