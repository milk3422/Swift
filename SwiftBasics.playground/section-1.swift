// Playground - noun: a place where people can play

import Cocoa

// Comments can be single line comments

/*
*  Or they can be many
*  many
*  many lines.
*/

// Print things to STDOUT
println("Hello World")

/***********
* Variables
***********/

// A variable (The type is inferred)
var str = "Hello, playground"
str = "Change the value"

// A constant (Type inferred)
let aConstant = 42

// Assigning a constant a new value will give you an error
//aConstant = 54

// Explicitly define variable types
var explicitInt : Integer
let explicitDouble : Double = 3.14

// Values are not implicitly converted, they must be explicitly converted
let label = "The width is "
var width = 95
var widthLabel = label + String(width)

// A simple way to convert values is to use the \() operator
var simpleWidthLabel = "The width is \(width)"
var concatWidthLabel = "The width is: " + String(width)

/************************
* Arrays and Dictionaries
************************/

// A simple initialized array
var shoppingList = ["Cereal", "Water", "chicken"]

// Accessing the array uses a 0 based index
shoppingList[1]

// Dictionaries are initialized and accessed in a similar fassion
var occupations = ["Zach": "Freelance", "Katie": "Assistant"]
occupations["Zach"]

// Initialize empty Arrays and Dictionaries explicitly defining type
let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()

// Or initialize with inferred types
let emptyArray1 = []
let emptyDictionary1 = [:]

/*************
* Control Flow
*************/

// Conditionals supported: if, Switch
// Loop supported: for, while, do-while, for-in
var score = 50
var grade : String

// A simple if-else block
if score > 60 {
    grade = "Pass"
} else {
    grade = "Fail"
}

// A simple for in loop to calculate passing grades
let individualScores = [34, 45, 92, 75, 40]
var numPassingGrades = 0

for score in individualScores {
    if score > 50 {
        numPassingGrades++
    }
}

/****************
* Optional Values
****************/

// Optional values can be defined or they contain a nil value
var optionalString: String? = "Hello"
optionalString == nil

// Initialize or don't initialize a string using the ?
var optionalName: String? = "Johnny"
//var optionalName: String?
var greeting: String

// if name is not nil, print a greeting
if let name = optionalName {
    greeting = "Hello, \(optionalName)"
}

/******************
* Switch Statements
******************/

// Switch statements do more than simple comparison
// Switch statements require a default case
let sport = "Basketball"

switch sport.lowercaseString {
    case "football":
        let sportComment = "This is American football"
    case "laccrose", "soccer":
        let sportComment = "Sports I used to play when I was younger"
    case let x where x.hasPrefix("basket"):
        let sportComment = "What a fun game"
    default:
        let sportComment = "I have never heard of this sport before"
}

/*******
* For-in
*******/

// For-in can easily iterate over a dictionary
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,2,4,9,16,25]
]

var largest = 0
var largestType: String? = nil
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestType = kind
        }
    }

}

// Get the largest number and the type of the largest number
if largest != 0 && largestType {
    var result = "Largest type \(largestType), largest number \(25)"
}

/***********
* While loop
***********/
// While loops can be used for multiplication
var n = 2
while n < 100 {
    n = n * 2
}
n

// Do while loops allow the condition to be evaluated after the first run
var m = 2
do {
    m = m*2
} while m < 100
m

/*********
* For loop
*********/

// The for-in model can use a range using the ".."
// In this example the range is (0,3] the upper limit is excluded
var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}
firstForLoop

// A traditional for loop can also be used
var secondForLoop = 0
for var i = 0; i < 3; i++ {
    secondForLoop += i
}
secondForLoop

/**********
* Functions
**********/

// The keyword 'func' declares a function
// Paremeters are comma delimited
// Parameters are in the formatn <argumentName>: <argumentType>
// The return type is spefified after a "->"
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Zach", "Thursday")


// Use a tuple to return multiple values
func getGasPrices() -> (Double, Double, Double) {
    return (3.15, 3.45, 3.75)
}
getGasPrices()
getGasPrices().0


// Functions can use varargs to take a variable number of arguments
func averageOf(numbers: Int...) -> Double {
    let amount = Double(numbers.count)
    var sum = 0

    for currValue in numbers {
        sum += currValue
    }

    return Double(sum) / amount

}
averageOf(1,2,3,4)


/**********
* Clojures
**********/
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }

    add()
    return y
}






























