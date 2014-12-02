import Cocoa

/*************
* Introduction
*************/

// Comments can be single line comments

/* Or they can be many
many
many lines.
/* and they an be nested as well */
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

// Multiple variables can be assigned on a single line
var x = 0.0, y = 0.0, z = 0.0

// NOTE: If a value is not going to change, declare it using the 'let' keyword

// Explicitly define variable using type annotation
var explicitInt: Int
let explicitDouble: Double = 3.14

// Multiple variables can be set on a single line with the type after the final
// variable
var red, green, blue: Double

// Unicode characters can be used as variable names
let ü = "Umlat"
let 🐶 = "Dog"

// Variables can use Swift kewords, but you must use backticks when calling 
// the variable
let `if` = "if"

// Values are not implicitly converted, they must be explicitly converted
let label = "The width is "
var width = 95
var widthLabel = label + String(width)

// A simple way to convert values is to use the \() operator
var simpleWidthLabel = "The width is \(width)"
var concatWidthLabel = "The width is: " + String(width)

/***********
* Semicolons
***********/

// Semicolons are not required after statements but are required for multiple
// statements per line
let cat = "🐱"; println(cat)

/*********
* Integers
*********/

// Ints are available in 8, 16, 32, and 64 bit signed and unsigned forms
let eightBitInt: Int8 = 42
let sixtyFourUInt: UInt64 = 72342

// Bounds can be accessed with min and max properties
let minIntValue = UInt16.min
let maxIntValue = Int.max

// Using 'Int' creates a type the same size as the systems native word size
// ie. On a 64-bit platform, Int is the same as Int64
// On a 32-bit platform, Int is the same as Int32
// UInt follows the same convention

/***********************
* Floating Point Numbers
***********************/

// Floating point numbers are numbers with a fractional component
// i.e., 3.14159 or -1.2345

// Swift provides two tipes of floating point numbers:
// Floats which are 32-bit
// Double which are 64-bit
let aFloat: Float = 3.14159
let aDouble: Double = -1.23455

// Double has a percision of at least 15 decimal Digits, and Float has as few
// as 6 digits


/**************************
* Type and Saftey Inference
**************************/

// Swift is a type safe language, which means that if your code expets a String
// It cannot be passed a Int by mistake

// This means that swift performs type checks when compiling code. Type checks
// helps avoid errors when workign with different types of values.

// Swift also uses type inference, so you don't have to specify the type of
// every constant or variable. If you don't specify the type, Swift uses 
// type inference to determine the appropriate type.

// Type infrence occurs when a constant or variable is declared with an initial
// value. For example:

// meaniningOfLife is infered to be of type Int
let meaningOfLife = 42

// Specifying a floating point will infer a Double
// Note: Swift chooses a Double instead of a Float if no type is specified
let pi = 3.14159

// Combining an Int and a Double with be inferred to be of type Double
let anotherPi = 3 + 0.14159


/*****************
* Numeric Literals
*****************/

// Integers can be different types.
// decimal type has no prefix
// binary type has a prefix of '0b'
// octal type has a prefix of '0o'
// hexadecimal type has a prefix of '0x'
let decimalInt = 42
let binaryInt = 0b101010
let octalInt = 0o52
let hexadecimalInt = 0x2A

// Floating-point literals can be decimal (witn no prefix) or hexidecimal
// with prefix 0x. Floating-point literals must have a number on both sides
// of the decimal point, they can also have an optional exponent, indicated
// by an uppercase or lowercase 'e' for decimal floats, or an uppercase or
// lowercase 'p' for hexadecmial floats

// Floating-point numbers with exponents
let floatWithExp = 1.25e2
let floatWithNegExp = 1.25e-2

// Hexadecimal with exponents
let hexWithExp = 0xFp2
let hexWithNegExp = 0xFp-2

// Numeric literals can contain extra formatting to make them easier to read

// Numbers can be padded
let paddedDouble = 000123.456

// Underscores can be used to help readability
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


/************************
* Numeric Type Conversion
************************/

// Use the Int type for all general-purpose integer constants and variables 
// in code, even if they are known to be non-negative. Using the default type
// means that integer constants and variables are immediately interoperable

// Use other integer types only when they are specifically needed for the task
// at hand

// Integer Conversion
// 


















