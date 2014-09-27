// Playground - noun: a place where people can play

import UIKit

// This playground highlights the use of optionals

// Any variable set as an optional is initialized as nil
// nil is a sentinal value
var optionalNum: Int?

func findIndexOfString(string: String, array: [String]) -> Int? {
    for (index, value) in enumerate(array) {
        if value == string {
            return index
        }
    }
    return nil
}

let strings = ["foo", "bar", "baz"]
findIndexOfString("bar", strings)
findIndexOfString("faz", strings)


// if let statement uses optional binding
// It unwraps and assign a type to index if findIndexOfString() is not nil
// otherwise the else statement is evaluated
if let index = findIndexOfString("bar", strings) {
    println("hello \(strings[index])")
} else {
    println("bar was not found")
}

// Using a temporary variable
let index = findIndexOfString("bar", strings)

// First must check if the return of our function call was nil
if index != nil {
    // Then must force unwrap our temp variable to get the value assigned to it
    // Forced unwrapping can be done using '!'
    println("hello \(strings[index!])")
} else {
    println("bar was not found")
}


class Person {
    var residence: Residence?
}

class Residence {
    var address: Address?
}

class Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}


let paul = Person()
paul.residence = Residence()
paul.residence?.address = Address()
paul.residence?.address?.apartmentNumber = "42"
paul.residence?.address?.streetName = "Main St."



// Using optional binding you can get properties safely by checking each 
// property in an if let statement

// Get address number as an Int
var addressNum: Int?

if let home = paul.residence {
    if let postalAddress = home.address {
        if let building = postalAddress.apartmentNumber {
            if let convertedNum = building.toInt() {
                addressNum = convertedNum
            }
        }
    }
}

// Or utilize optional chaining
// Evaluate each point using the '?' operator or chaining operator to see if the
// type to its left is nil or an actual value
// If any part of the expression is nil, the rest of the expression to the 
// right is ignored
addressNum = paul.residence?.address?.apartmentNumber?.toInt()

// Because toInt returns an optional addressNum must be unwrapped to retrieve 
// an int
addressNum!

// Or you can use optional chaining and optional binding
if let addrNum = paul.residence?.address?.apartmentNumber?.toInt() {
    println("Paul lives at \(addrNum)")
}



















