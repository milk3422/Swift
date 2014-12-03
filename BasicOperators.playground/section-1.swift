import Cocoa

/****************
* Basic Operators
****************/

// Operators are special symbols or phrases that are used to check, change, 
// or combine values. For example the addition operator (+) adds two numbers
// together.

let addition = 2 + 3

// Swift supports most standard C operators and improves several capabilities 
// to eliminate common coding errors. The assignment operator (=) does not 
// return a value to prevent it from being mistakenly used when the equal to
// operator (==) is intended.

// Arithmetic operators (+, -, *, /, % and so forth) detect and disallow 
// value overflow to avoid unexpected results when workig with numbers that
// become larger or smaller than the allowed value range fo the type that stores
// them.

// Unlike C, Swift lets you perform remainder (%) calcultions on floating-point
// numbers. Swift also provides range operators (a..<b and a...b) as a
// shortcut for expressing a range of values.


/************
* Termonology
************/

// Operators are unary, binary, or ternary:
// Unary operators operate on a single target, such as -a. Unary prefix
// operators appear immediately before their target, such as !b, and unary
// postfix operators appear immediately after their target, such as i++

// Binary operators operate on two targets, such as 2 + 3. They are infix 
// because they appear between their two targets

// Ternary operators operate on three targets. Swift only has one ternary 
// operator, the ternay conditional operator (a ? b : c)


/********************
* Assignment Operator
********************/

// The assignment operator (a = b) initializes or updates the value of a with
// the value of b

let b = 10
var a = 5
a=b

// If the right side of the assignment is a tuple, it can be decomposed into
// multiple constants or variables

let (x,y) = (1,2)
println("The value of \'x\' is \(x)")
println("The value of \'y\' is \(y)")

// Since the assignment operator in Swift does not return a value, the following
// statement is not valid

//if x = y {
//    // blah
//}


/********************
* Arithmetic Operator
********************/

// Swift supports four arithmetic opertors for all numbers: +, -, *, /

1+2
3-4
5*6
1/2.4

// Swift does not allow values to overflow by default. A value can opt in to
// value overflow by using Swift's overflow operators &+

// The adition operator is also supported for string concatenation
"hello, " + " world"


/*******************
* Remainder Operator
*******************/

// This works similar as it does in other languages. The remainder operator
// (a % b) determines how many multiples of a fit inside b and returns the 
// value that is left over

// In the following example (9 % 4), 4 goes into 9 twice with a left over of 1
9 % 4

// To determine the answer for a % b, the % operator calculates the folowing 
// equation and returns remainder as its output
// a = (b x some multiplier) + remainder
// inserting 9 and 4 into this equation
// 9 = (4 x 2) + 1

// The same method is applied when calculate a negative value of a
-9 % 4

// inserting -9 and 4 into the equation yeilds: 
// -9 = (4 * -2) + -1

// The sign of b is ignored for negative values of b, therefore a % b and 
// a % -b always give the same answer

// The remainder operator in Swift also works on floating point numbers:
8 % 2.5

// Inserting 8 and 2.5 into our equation yeilds
// 8.5 = (2.5 * 3) + 0.5


/**********************************
* Increment and Decrement Operators
**********************************/

// Swift provides the increment operator (++) and decrement operator (--). Both
// of these operators can be used as a prefix or a postfix. Using the increment
// operator as a prefix, ++a, is the same as saying a = a + 1. Using the 
// decrement operator as a postfix operator, a--, is the same as saying 
// a = a - 1. The difference between prefix and postfix usage is simple: If the
// operator is written before a variable, it increments the variable before 
// returning it's value; if the operator is written after the variable, it 
// increments the variable after returning its value. 

// For example, we create a variable i with the initial value of 0
var i = 0

// We then initialize a variable with the value of i+1 and also increment i in
// the process
var j = ++i

// Lastly, we initialize a constant, k, with the value of i, then increment
// the value of i
let k = i++

// Note: Unless the behavior of the postfix operator is absolutely necessary
// it is best to use the prefix operator to avoid confusion and possible 
// logic errors


/****************
* Unary Operators
****************/

// The unary minus operator (-) is used to toggle a values sign

let three = 3
let minusThree = -three     // minusThree equals -3
let plusThree = -minusThree // plusThree equals 3

// The unary plus operator (+) does not do anything :)
let minusSix = -6
let alsoMinusSix = +minusSix


/******************************
* Compound Assignment Operators
******************************/

// Swift supports compound assignment operators that combine assignment (=) with
// another operation. One example is the addition assignment operator (+=).

var d = 1
d += 2

// d += 2 is shorthand for d = d + 2


/*********************
* Comparison Operators
*********************/

// Swift supports all the standard operators
// Eaual to (a == b)
// Not equal to (a != b)
// Greater than (a > b)
// Less than (a < b)
// Greater than or equal to (a >= b)
// Less than or equal to (a <= b)

1 == 1  // true, becaues 1 is equal to 1
2 != 1  // true, because 2 is not equal to 1
2 > 1   // true, because 2 is greater than 1
1 < 2   // true, because 1 is less than 2
1 >= 1  // true, because 1 is greater than or equal to 1
2 <= 1  // false, because 2 is not less than or equal to 1

// Comparison operators are used in coditional statements

let name = "world"

if name == "world" {
    println("Hello, world")
} else {
    println("I'm sorry \(name), but I don't recognize you")
}


/*****************************
* Ternary Conditional Operator
*****************************/

// The ternay conditional operator is an operator that has three parts with the
// form
// question ? answer1 : answer2
// It is a shorter version of a traditional if/else conditional. If the question
// is true, it evaluates answer1 and returns its value; otherwise, it evaluates
// answer2 and returns its value.

// As an example we can calculate row height base on a header that either exists
// or does not exist
let contentHeight = 40
let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// The previous ternay conditional is short hand for
var newRowHeight = contentHeight
if hasHeader {
    newRowHeight = newRowHeight + 50
} else {
    newRowHeight = newRowHeight + 20
}


/************************
* Nil Coalescing Operator
************************/

// The nil coalescing (a ?? b) unwraps an optional a if it contains a value, 
// or returns a default value b, if a is nil. The expression a is always of an 
// optional type. The expression b must match the type that is stored inside a.

// The nil coalescing operator is shorehand for the code below: 
// a != nil ? a! : b

// The following example uses the nil coalescing operator to choose between a 
// default color name and an optional user-defined color name
let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName


// If a value is assigned to userDefinedColorName and the nil coalscing operator
// is used again it will retun the unwrapped value in userDefinedColorName
userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName


/****************
* Range Operators
****************/

// Swift includes two range operators: the closed range operator and the 
// half-open range operator

// The closed range operator is (a...b) and is a range that runs from a to b,
// and includes the values a and b. The value of a must not be greater than b.

for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

// The half-open range operator (a..<b) defines a range that runs from a to b,
// but does not include b. It is said to be half open because it contains its
// first value, but not its final value. As with the closed range operator, the
// value of a must not be greater than the value of b.

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count

for l in 0..<count {
    println("Person \(l+1) is called \(names[l])")
}

// Note: the previous example assigns l the values 0 to 3.


/******************
* Logical Operators
******************/

// Logical operators modify or combine the Boolean logic values true and false.
// Swift supports three logical operators:
// Logical NOT (!a)
// Logical AND (a && b)
// Logical OR (a || b)

// The logical not operator (!a) inverts the boolean value so that true becomes
// false and false becomes true

let allowedEntry = false

if !allowedEntry {
    println("ACCESS DENIED!")
}

// The logical and operator (a && b) will only return true if both values, a 
// and b, are true. If a or b is false, the logical and operator will return
// false.

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    println("Welcome!")
} else {
    println("ACCESS DENIED!")
}

// The logical or operator (a || b) will compute the logical or of the values
// a and b. It will return true if and only if a or b is true, otherwise it will
// return false.

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED!")
}

// Logical operators can be combined, but be careful how the statement is 
// evaluated

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED!")
}

// The previous example may seem confusing. To alleviate the confusion, It is 
// sometimes useful to use explicit parenthesis to make conditional statements 
// more clear

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED!")
}