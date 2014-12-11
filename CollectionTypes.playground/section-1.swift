import Cocoa

/*****************
* Collection Types
*****************/

// Swif has two collections: arrays and dictionaries. Arrays are ordered lists
// of value of the same type. Dictionaries are unordred collections of values
// of the same type which can be referenced and looked up through a unique 
// identifier

// Swift uses explicitly typed collections to ensure that code is always clear 
// about the types of values it can work with. 

// Collections are mutable if they are assigned to a variable and immutable
// if they are assigned to a constant. It is good practice to always assign
// collections that will not change to constants so the compiler will optimize
// your code.


/*******
* Arrays
*******/

// An array stores multiple values of the same type in an ordered list. The
// same value can appear in an array multiple times at different positions.

// Siwft arrays are type safe so if an array of Int is created, only Ints can 
// be inserted

// An array can be defined as using the syntax Array<SomeType> or using the
// shorthand syntax [SomeType]


/***************
* Array Literals
***************/

// An array can be initialized with an array literal, which is one or more
// values as an array collection. Literals are a comma separated list 
// surrounded by square brackets

// shoppingList is initialized with two initial items
var shoppingList: [String] = ["Eggs", "Milk"]

// shoppingList is a created as a mutable array of type String. It is only 
// allowed to store String values. Shopping list could have also been created
// using type inference. Swift is able to determine the type of values based
// on the type being used to initialize the array.

// Using type inference the previous list could be written as
var newShoppingList = ["Eggs", "Milk"]


/*********************************
* Accessing and Modifying an Array
*********************************/

// To find the number of items in an array the count property can be called
println("The shopping list contains \(shoppingList.count) items")

// The isEmpty property can be used to determine if an array contains any
// elements

if shoppingList.isEmpty {
    println("The shopping list is empty")
} else {
    println("The shopping list is not empty")
}

// Arrays can be added to using the append method

shoppingList.append("Flour")

// Alternatively, arrays of one or more items can be appended to another array
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

// A value can be retrieved by using the subscript syntax. Array's are zero-
// indexed.
var firstItem = shoppingList[0]

// The subscript notation can also be used to change an item
shoppingList[0] = "Six Eggs"

// Subscript syntax can be used to change a range of values at once. Even if
// the number of values has a different length than the range you are 
// replacing.
shoppingList[4...6] = ["Bananas", "Apples"]

// To insert an item at a specific index, the insert(atIndex:) method can be
// used. Insert inserts an item and moves all of the other items over.
shoppingList.insert("Maple Syrup", atIndex: 0)

// Similarly, an item can be removed from an index with the removeAtIndex
// method. removeAtIndex removes the item at the specified index and returns
// it.
let mapleSyrup = shoppingList.removeAtIndex(0)

// A handy method to remove the last element is removeLast. This method saves
// the call to the count method
let apples = shoppingList.removeLast()


/************************
* Iterating Over an Array
************************/

// A for-in loop can be used ot easily iterate over an array
for item in shoppingList {
    println(item)
}

// If the index of each item is required the global enumerate function 
// can be used to return a tuple for each item in the array composed of the
// index and the value for that item.
for (index, value) in enumerate(shoppingList){
    println("Item \(index + 1): \(value)")
}


/***********************************
* Creating and Initializing an Array
***********************************/

// An empty array can be created with the initialize syntax
var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")

// If the context already proveds the type information, an empty array can be 
// created with a blank []
someInts.append(3)

// The array can be delcared as empty using blank square brackets ([]) because
// Swift can infer the type from previous function calls
someInts = []

// Swift also allows Arrays to be created of a specific size with a default
// value by passing the initializer a count and a repeatedValue
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

// New arrays can be created by adding together existing arrays of compatible
// types with the addition operator.
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles


































