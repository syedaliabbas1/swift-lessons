//Arrays (a list of items)

var fruits = ["Apple", "Banana", "Cherry"]
print(fruits)
print("First fruit:", fruits[0])
print("Second fruit:", fruits[1])
print("Third fruit:", fruits[2])
print("Number of fruits:", fruits.count)


//Add / remove / change items
fruits.append("Date")
print("After adding Date:", fruits)
fruits.remove(at: 1)  // removes Banana
print("After removing Banana:", fruits)
fruits[0] = "Apricot"  // change Apple to Apricot
print("After changing Apple to Apricot:", fruits)


//Loops (repeat code)
let colors = ["Red", "Green", "Blue"]
for color in colors {
    print("Color:", color)
}
//Loop with index
for number in 1...5 {
    print("Number:", number)
}

//Using index with loops
let animals = ["Dog", "Cat", "Rabbit"]
for index in 0..<animals.count {
    print("Animal \(index + 1):", animals[index])
}

//Functions (make your own commands)
func greeting() {
    print("Hello! Welcome to Swift programming.")
}

greeting()
greeting()

//Function with an input (parameter)
func sayHello(to name: String) {
    print("Hello, \(name)! 👋")
}

sayHello(to: "Alice")
sayHello(to: "Bob")

//Function that returns a value
func double(_ number: Int) -> Int {
    return number * 2
}

let result = double(6)
print("Double is:", result)

//Random choice from an array
let pets = ["Dog 🐶", "Cat 🐱", "Fish 🐟", "Hamster 🐹"]
let randomPet = pets.randomElement()!
print("Your random pet is:", randomPet)

//Mini Project (main): “Classroom Points Tracker”
var students = ["Anna", "Ben", "Cara", "Sara"]
var points = [0, 0, 0, 0]

func givePoint(to studentName: String) {
    for i in 0..<students.count {
        if students[i] == studentName {
            points[i] += 1
            print("\(studentName) now has \(points[i]) points ⭐️")
        }
    }
}

func showLeaderboard() {
    print("=== LEADERBOARD ===")
    for i in 0..<students.count {
        print("\(students[i]): \(points[i])")
    }
}

givePoint(to: "Anna")
givePoint(to: "Ben")
givePoint(to: "Sara")

showLeaderboard()