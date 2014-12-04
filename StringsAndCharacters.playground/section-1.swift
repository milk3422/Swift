import Cocoa

/***********************
* Strings and Characters
***********************/

// A string in Swift is an orderd collection of characters. Strings in Swift
// are represented by the String type, which in turn represents a collection 
// of values of Character type.

// Strings mutability is managed by choosing a constant or variable, just like
// all other types in Swift.


/****************
* String Literals
****************/

// A string literal is a fixed sequence of textual characters surrounded by a
// pair of double quotes (")

let someString = "Some string literal value"

/***************************
* Initialize an Empty String
***************************/

// To create an empty string either assign an empty string literal to a variable
// or initialize a new String instance with initializer syntax: 

var emptyString = ""
var anotherEmptyString = String()

// To find out whether a String value is empty you can check its isEmpty 
// property

if emptyString.isEmpty {
    println("Nothing to see here")
}


/******************
* String Mutability
******************/

// To indicate whether a particular Sring can be modofied, or mutated, it can 
// be assigned to a variable or constant

var variableString = "Horse"
variableString += " and Carriage"

// Attempting to modify a constant string causes an error
let constantString = "Highlander"
//constantString += ", there can be only one!"


/***********************
* String Are Value Types
***********************/

// Swift's String type is a value type. If a new String value is created, the
// String value is copied when it is passed to a function or method, or when it
// is assigned to a constant or variable. This is important because it ensures
// that whena  function or method passes a String value, it is clear that the 
// original string cannot be modified.


/************************
* Working With Characters
************************/

// Because Swift's String type is a collection of Characters, individual 
// characters in a String can be accessed by iterating over the String with a 
// for-in loop

for character in "Dog!🐶" {
    println(character)
}

// To create a stand-alone Character constant or variable from a 
// single-character string literal by providing a Character type annotation.

let euroSign: Character = "€"


/*************************************
* Concatenating Strings and Characters
*************************************/

// String values can be added together using the concatenation operator (+)
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

// String variables can alo be appended to using the addition asignment operator
var instruction = "look over"
instruction += string2

// Characters can be appened to a string using the String type's append method
let exclamationMark: Character = "!"
welcome.append(exclamationMark)


/*********************
* String Interpolation
*********************/

// String interpolation is a way to construct a String value from a mix of
// constants, variables, literals, and expression by including their values
// inside a string literal. Each item included is wrapped in a pare of
// parentheses prefixed by a backslash

let multiplier = 3  // Initialized as an integer
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

// Note: The expression inside the parentheses within an interpolated string
// cannot contain an unescaped double quote(") or backslash (\), and cannot
// contain a carriage return or line feed.


/********
* Unicode
********/

// Unicode is an international standard for encoding, representing and 
// processing text in different languages. It enables almost any character from
// any language to be presented in a standardized form. Swift's Stirng and 
// Character types are fully Unicode-compliant

// Swift's native String type is built from Unicode scalar values. A Unicode
// scalar is a unique 21-bit number for a character or modifier, such as U+0061.
// A Unicode scalar is any Unicode code point in the range U+0000 to U+D7FF
// inclusive or U+E000 to U+10FFFF inclusive.


/**********************************************
* Special Unicode Characters in String Literals
**********************************************/

// String literals can contain the following special Unicode characters:
// \0   - null character
// \\   - backslash
// \t   - horizontal tab
// \n   - line feed
// \r   - carriage return
// \"   - double quote
// \'   - single quote
// \u{n} - an arbitrary Unicode scalar where n is between 1 and 8 hex digits

// Some examples
let wiseWords = "\"Imagiation is more imporant thank knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"


/**************************
* Extended Grapheme Cluster
**************************/

// In Swift, each Character represents a single extended grapheme cluster. An
// extended grapheme cluster is a sequence of one or more Unicode scalars that,
// when combined, produce a single human-readable character.

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"


/********************
* Counting Characters
********************/

// The number of characters in a string can be counted using the global
// countElements function

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
println("unusualMenagerie has \(countElements(unusualMenagerie)) characters")

// Because Swift uses extended grapheme clusters, string concatonation and
// modification may not alwaysaffect the string's character count.

// For example, if a string is initialized with the four letter word 'cafe'
// then appened with a COMBINING ACUTE ACCENT (U+0301) the result will still
// have a character count of 4, with the fourth character of é not e
var word = "cafe"
println("The number of charactersin \(word) is \(countElements(word))")

word += "\u{301}"

println("The number of charactersin \(word) is \(countElements(word))")

// Note: because Swift uses extended grapheme clusters, different characters
// and different representations of the same character can requrie different
// ammounts of memory to store. Because of this characters within a string do
// not take up the same amount of space, therefore the only way to determine 
// the number of characters in a string is to iterate over all of the
// characters. countElements can be very slow if the string is very long!


/******************
* Comparing Strings
******************/

// Swift provides three way to compare textual strings, string and character
// equality, prefix equality, and suffix equality.

// String and character equality is checked with the "equal to" operator (==)
// and the "not equal to" operator (!=)

let quotation = "We're a lot alike, yu and I."
let sameQuotation = "We're a lot alike, yu and I."

if quotation == sameQuotation {
    println("These two strings are considered equal")
}

// Two strings are considred equal if there extended grapheme clusters are 
// canonically equivalent. Extended grapheme clusters are canonically equivalent 
// if they have the same linguistic meaning and appearance, even if they are 
// composed of different Unicode scalars.

let eAcuteQuestion = "Voulez-vous un caf\u{E9}"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}"

if eAcuteQuestion == combinedEAcuteQuestion {
    println("These two strings are considered equal")
}

// Conversly, LATIN CAPITAL LETTER A, used in English, is not equivalent to 
// CYRILLIC CAPITAL LETTER A, as used in Russian. Although the characters look
// similar, they do not have the same linguistic meaning

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
    println("These two characters are not equivalent")
}

// Prefix and Suffix equality can be checked by calling a particual strings 
// hasPrefix and hasSuffix methods

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

// The hasPrefix method can be used to count the number of scenes in Act 1

var act1SceneCount = 0

for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++act1SceneCount
    }
}

println("Act 1 has \(act1SceneCount) scenes")

// Similarly, the hasSuffix method can be used to count the number of scenes
// that take place in or around Capulet's mansion and Friar Lawrence's cell

var mansionCount = 0
var cellCount = 0

for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}

println("\(mansionCount) scenes take place in Capulet's mansion")
println("\(cellCount) scenes take place in Friar Lawrence's cell")

// Note: the hasPrefix and hasSuffix perform a character by character canonical
// equivalence comparison between the extended grapheme clusters in each string


/******************************
* Unicode String Representation
******************************/

// When a Unicode String is written to a test file, the Unicode scalaras in the
// String are encoded into one of the following Unicode formats: UTF-8, UTF-16,
// or UTF-32.

// As previously covered,for-in statements can be used to access the individual
// characters. Alternatively, 


let dogString = "Dog\u{203C}\u{1F436}"

// UFT-8 representation can be accessed by iterating over the Strings utf8 
// property. This displays the string in UTF-8 format

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ")
}
print("\n")

// In the example above the first three characters 'D', 'o', and 'g' are
// represented by 68, 111, and 103. The next three bytes, 226, 128, and 188
// are the UTF-8 encoding of the DOUBLE EXCLAMATION MARK. The last four bytes
// (240, 159, 144, and 182) are the UTF-8 representation of the DOG FACE
// character.


// Similarly, the UTF-16 representation can be accessed by iterating over the 
// String and calling the String's utf16 property

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}
print("\n")


// Again, the first three codeUnit values (68, 111, 103) represent the
// characters D, o, and g, whose UTF-16 code units have the same values as in 
// the string’s UTF-8 representation (because these Unicode scalars represent 
// ASCII characters).

// The fourth codeUnit value (8252) is a decimal equivalent of the hexadecimal 
// value 203C, which represents the Unicode scalar U+203C for the DOUBLE 
// EXCLAMATION MARK character. This character can be represented as a single 
// code unit in UTF-16.

// The fifth and sixth codeUnit values (55357 and 56374) are a UTF-16 surrogate 
// pair representation of the DOG FACE character. These values are a 
// high-surrogate value of U+D83D (decimal value 55357) and a low-surrogate 
// value of U+DC36 (decimal value 56374).


// Similarly, the UTF-32 representation can be accessed by iterating over the
// String and calling the String's unicodeScalars property. This will return
// the Unicode scalars, which values can be displayed by calling the value
// property for each scalar

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ")
}
print("\n")

// Lastly, by not calling the scalar's value property, the unicode characters 
// will be displayed

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
print("\n")