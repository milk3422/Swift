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
var explicitInt: Integer
let explicitDouble: Double = 3.14

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
// nil is considered falsd
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

// Functions can be nested and nexted functions have access to code
// declared in the outer function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }

    add()
    return y
}
returnFifteen()

// Functions are first class types and can return another function
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// Functions can take other functions as arguments
func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 11]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

numbers = [0,1,2,3,4]
numbers.map({
    (number: Int) -> Int in
    if number % 2 == 0 {
        return 1
    }

    return 0
    })

/********************
* Objects and classes
********************/

class NamedShape {
    var numSides = 0
    var name: String
    let color = "Blue"

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A \(self.color) shape with \(self.numSides) sides"
    }

    func setNumSides(sides: Int) {
        self.numSides = sides
    }
}

var shape = NamedShape(name: "Ha")
shape.numSides = 7
shape.simpleDescription()
shape.setNumSides(4)
shape.simpleDescription()

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String){
        // Must set properties before calling init on super
        self.sideLength = sideLength

        super.init(name: name)

        numSides = 4
    }

    func area() -> Double {
        return self.sideLength * self.sideLength
    }

    override func simpleDescription() -> String {
        return "A square with side of len \(self.sideLength)"
    }
}

let test = Square(sideLength: 4.2, name: "Square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double

    init(name: String, radius: Double) {
        self.radius = radius
        super.init(name: name)
    }

    func area() -> Double {
        return 3.14 * radius * radius
    }

    override func simpleDescription() -> String {
        return "A circle with a radius of \(self.radius)"
    }
}

var circle = Circle(name: "Circle", radius: 4.12)
circle.area()
circle.simpleDescription()

class EquilateralTraingle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength

        super.init(name: name)

        self.numSides = 3
    }

    // Classes can have setters and getters for variables
    // newValue is the explicit name used in a setter
    var perimiter: Double {
    get {
        return 3.0 * self.sideLength
    }
//    set {
    set (value){
//        self.sideLength = newValue / 3.0
        self.sideLength = value / 3.0
    }
    }

    override func simpleDescription() -> String {
        return "An equilateral trinagle with sides of length\(self.sideLength)"
    }
}

var triangle = EquilateralTraingle(sideLength: 3.4, name: "triangle")
triangle.perimiter
triangle.perimiter = 9.9
triangle.simpleDescription()

class TriangleAndSquare {
    var triangle: EquilateralTraingle {
    willSet {
        square.sideLength = newValue.sideLength
    }
    }

    var square: Square {
    willSet{
        triangle.sideLength = newValue.sideLength
    }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTraingle(sideLength: size, name: name)
    }

}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Another shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "Large square")
triangleAndSquare.triangle.sideLength


// A special note on classes and methods

class Counter {
    var count: Int = 0

    // Methods in classes can specify secondary names for parameters
    // These names are used only in the method
    func incrementBy (amount: Int, numberofTimes times: Int) {
        count += amount * times
    }

}

var counter = Counter()
// Class methods must use the parameter names. The first parameter is
// optional
counter.incrementBy(2, numberofTimes: 7)


// Optional values
// if the value before the ? is nil, everythign after the ? is ignored
let optionalSquare: Square? = Square(sideLength: 4.0, name: "optional square")
let sideLength = optionalSquare?.sideLength

/*************
* Enumerations
*************/

// Enumerations can have methods

enum Rank: Int {
    // Because the raw type of this enumeration is Int we must specify the 
    // first value to be 1, all other values will increase
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight ,Nine, Ten
    case Jack, Queen, King

    // A simple function inside an enum to retun a string
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }

    // A compare method that compares one enumeration to another
    func compare(card: Rank) -> Int {
        if self.toRaw() < card.toRaw() {
            return -1
        } else if self.toRaw() > card.toRaw() {
            return 1
        }

        return 0
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()

// Compare a queen to a Jack
Rank.Queen.compare(Rank.Jack)

// Use fromRaw and toRaw to covert from raw values to enumerated values
if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()
}


enum Suit {
    case Spades, Hearts, Diamonds, Clubs

    // A function to return the string type
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }

    // A function to return the color
    func color() -> String {
        switch self{
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

/***********
* Structures
***********/

// Structures support many of the same behaviors as classes including methods
// and initializers
// The largest difference is that structures are copied when passed while 
// objects are passed by reference

struct Card {
    var rank: Rank
    var suit: Suit

    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    func createDeck() -> Card[] {
        var deck = Card[]()

        for var i = 1; i <= 13; i++ {

            if let convertedRank = Rank.fromRaw(i) {
                deck.append(Card(rank: convertedRank, suit: Suit.Hearts))
                deck.append(Card(rank: convertedRank, suit: Suit.Clubs))
                deck.append(Card(rank: convertedRank, suit: Suit.Diamonds))
                deck.append(Card(rank: convertedRank, suit: Suit.Spades))
            }
        }


        return deck
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)

// Create a deck
let deck = threeOfSpades.createDeck()

// Display the deck of cards
for card in deck {
    card.simpleDescription()
}

/**********
* Protocols
**********/

// Classes, enums, and structs can all adopt protocols
protocol ExampleProtocol {
    var simpleDescription: String { get }

    // mutating keyword means the method adjust modifies the structure
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69015

    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

// A structure inpmenting the protocol
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"

    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// An enum implementing the protocol
enum ExampleEnum : ExampleProtocol{
    case Base, Adjusted

    var simpleDescription: String { get {
        return self.getDescription()
    }
    }

    func getDescription() -> String{
        switch self{
        case Base:
            return "A simple description of enum"
        case .Adjusted:
            return "Adjusted description of enum"
        default:
            return "default description"
        }
    }

    mutating func adjust() -> Void{
        self = ExampleEnum.Adjusted
    }    
}

/***********
* Extensions
***********/

// Extensions add functionality to an existing type

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "the Number \(self)"
    }

    mutating func adjust() {
        self += 42
    }
}

7.simpleDescription
var myInt = 7
myInt.adjust()
myInt

extension Double {
    func absoluteValue() -> Double {
    if self < 0.0 {
        return self * -1.0
    }
        return self
    }
}

var myDouble = -11.23
myDouble.absoluteValue()

/*********
* Generics
*********/

// ItemType will be inferred
func reapeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
    var result = ItemType[]()

    for i in 0..times {
        result += item
    }

    return result
}
reapeat("knock", 4)


enum OptionalValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

// Use where after type to specify a list
func anyCommonElements <T, U where T: Sequence,
    U: Sequence,
    T.GeneratorType.Element: Equatable,
    T.GeneratorType.Element == U.GeneratorType.Element>(lhs: T, rhs: U) -> Bool {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
}
anyCommonElements([1,2,3], [3])









