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
// If a number cannot fit into a constant or variable, an error will be 
// reported when code is compiled. Uncomment the following examples to see the 
// errors

// UInt cannot store negative numbers
//let cannotBeNegative: UInt8 = -1

// Int8 cannot store a number larger than it's max value
//let tooBig: Int8 = Int8.max + 1

// Because each numeric type can store a different range of values, you must 
// opt-in to numeric type conversion on a case by case basis

// To convert one specific number type to another, a number must be initialized
// with the desired types existing value

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// The above example shows that a UInt16 and a UInt8 cannot be added without 
// calling UInt16() to creat a new UInt16 with the value of one. Because
// both numbers are UInt16, twoThousandAndOne is inferred to be a UInt16

// Conversions between integers and floating-point numeric types must be made
// explicit

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pie = Double(three) + pointOneFourOneFiveNine

// In this example the constant three is used to create a new Double so that
// both sides of the addition are of the same type.

// Floating-point to Integer conversion must also be explicit

// integerPi is inferred to be of type Int because an integer is created from
// the constant pie
let integerPi = Int(pie)

// Floating-point values are always truncated when Integers are created

// The rules for combining numeric constants and variables are different then 
// the rules for combining numeric literals. Since literals do not have an
// explicit type, 3 can be combined with 0.123 without having to perform any
// explicit conversion
let literalAddition = 3 + 0.123


/*************
* Type Aliases
*************/

// Type aliases can be used to define alternative names for existing types. 
// They are created using the typealias keyword

// In the following example, AudioSample is defined as a UInt16 and the 
// maxAmplitude is set to AudioSample.min or 0
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.min


/*************
* Booleans
*************/

// Swift provides a basic Boolean type called Bool. The value is restricted
// to true or false:

let orangesAreOrange = true
let turnipsAreDelicious = false

// The values of the previous constants are inferred to be of type Bool because
// they were declared with true and flase.

// Boolean values are very useful in conditional statements:
if turnipsAreDelicious {
    println("Nom nom nom, tasty turnips!")
} else {
    println("Eww, turnips are horrible.")
}

// Swift's type saftey prevents non-Boolean values from being substituted for
// Bool. Uncomment the following example to see the error produced.
//let i = 1
//if i {
//    println("This produces an Error")
//}

// Hower the alternative example is valid
let i = 1
if i == 1 {
    println("This does not produce an Error")
}

// Comparison results == produce a type Bool


/*******
* Tuples
*******/

// Tuples group multiple values together into a single compound value. The 
// values within a tuple can be of any type and do not have to be of the same
// type as each other. 

// The following example uses a Tuple that describes an HTTP status code. The
// Tuple stores both and Int and a String

let http404Error = (404, "Not Found")

// Tuples can be created fomr any permutation of types and they can contain as
// many different types as you like. You can have a Tuple of (Int, Int, Int) or
// a Tuple of (Bool, String, Int, Double).

// A Tuple can be decomposed into separate constants or variables and be
// displayed using println
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")

// If only some values of the tuple are needed you can ignore parts with an 
// underscore (_) when decomposing the Tuple:
let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

// Alternatively you can access the individual element values in a Tuple using
// index numbers starting at 0:
println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

// Tuples also allow individual elements to be named when a tuple is defined
let http200Status = (StatusCode: 200, Description: "OK")

// If the elements are named, they name can be used to access the values of the
// elements
println("The status code is \(http200Status.StatusCode)")
println("The status message is \(http200Status.Description)")

// Tuples are great when they return values of functions. Tuples allow functions
// to return multiple values, providing more useful information about its 
// outcome.


/**********
* Optionals
**********/

// Optionals should be used where a value may be absent

// String's toInt() method will return an optional Int because toInt() may 
// not be able to convert the string. In the following example, "123" is 
// converted to an integer and returned

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

// The next example will return nil because "asdf" cannot be converted to an 
// Int

"asdf".toInt()

// A optional variable can be set to a valueless state by assigning it the value
// nil

// serverResponseCode first contains 404, then it is set to nil
var serverResponseCode: Int? = 404
serverResponseCode = nil

// Note: nil cannot be used with nonoptional constants and variables.

// If an optional constant or variable is defined without a default value, 
// it is automatically set to nil

// surveyAnswer is automatically nil
var surveyAnswer: String?

// An if statement can be used to determine if an optional contains a value
// by comparing it to nil. 

// If an optional has a value it will not be equal to nil

if convertedNumber != nil {
    println("convertedNumber contains an integer value.")
}

// When you are absolutely sure an optional does contain a value, it can be 
// accessed by adding an exclimation mark (!) to the end of the options name.
// This is known as forced unwrapping the optional's value

if convertedNumber != nil {
    println("convertedNumber contains an integer value of \(convertedNumber!).")
}

// Note: Trying to force unwrap an optional without a value will cause a
// runtime error


/*****************
* Optional Binding
*****************/

// Optional binding determines if an optional has a value and makes its value
// temporarily available within an if or while statement

// Using the possibleNumber from the previous section

if let actualNumber = possibleNumber.toInt() {
    println("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    println("\'\(possibleNumber)' could not be converted to an integer")
}

// Both constants and variables can be used with optional binding, so if the 
// value needed to be changed, a variable can be used

// Implicit Unwrapped Optionals is an optional that will always have a value 
// after it is first set. To define an implicit unwrapped optional, use an 
// exclimation (!) after the type instead of a question mark (?). Implicit
// Unwrapped Optionals are useful when an optional's value is confirmed to exist
// immediately after the optional is first defined and can definitely be
// assumed to exist every point afterwards. The primary use of the implicitly
// unwrapped optionals in Swift is during class initialization

// The first example is an explicity optional
let possibleString: String? = "An optional string."
let forcedString: String? = possibleString! // requires a bang to unwrap

// The second example is an implicit optional, it does not need an 
// exclimation to be unwrapped because it is implicitly defined
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for a bang

// An implicity unwrapped optional can be though of as giving permission for
// the optional to be unwrapped automatically without having to be checked

// Note: If an implicitly unwrapped optional does not contain a value and it
// is accessed it will cause a runtime error

// An implicitly unwrapped optional can be treated like a normal optional
if assumedString != nil {
    println(assumedString)
}

// An implicitly unwrapped optional can also be used with optional binding
if let definiteString = assumedString {
    println(definiteString)
}

// Note: Do not use an implicitly unwrapped optional when there is a 
// possibility of a variable becoming nil at a later point


/***********
* Assertions
***********/

// An assertion is a runtime check that a logical condition is true. If an 
// assertion is false, code execution ends and the application is terminated

// In the following example, code execution will only continue if age >= 0
// If the value of age is negative, the assertion triggers and the application
// is terminiated

let age = -3
assert(age >= 0, "A person's age cannot be less than zero")

// Assertions can be used during the devlopment phase to debug an application