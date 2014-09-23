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



















