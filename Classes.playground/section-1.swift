import UIKit

/*****************************************************************************
* Initialization in structures and classes in Swift
*
* The main rules on initialization
* - All properties must be defined before any methods can be called
*
*****************************************************************************/


struct Color {
    // All properties are defined on a single line
    let red, green, blue: Double

    // Uninitialized properties must be initialized in the init method before
    // the property is used
    init(grayScale: Double) {
        // Stored properties must be set first
        red = grayScale
        green = grayScale
        blue = grayScale

        // Methods can be defined after all properties have been initialized
    }
}

// Create gray using our initializer
let gray = Color(grayScale: 44.0)

// A color structure utilizing the default initializer when all properties
// are defined
struct newColor {
    let red = 0.0, green = 0.0, blue = 0.0
}

// Create black using the default initializer
let black = newColor()


// A color structure using the memerwise initializer
struct anotherColor{
    let red, green, blue: Double
}

// Create white using the memberwise initializer
let white = anotherColor(red: 255.0, green: 255.0, blue: 255.0)



/**************************
* Initialization in Classes
**************************/

// A base class Car, that defines a car's color
class Car {

    // A property to hold the color of a car
    var paintColor: Color

    // The initializer to set the color of the car
    init(color: Color) {
        self.paintColor = color
    }
}

// A subclass of Car, RaceCar
class RaceCar: Car {

    // The subclass has its own property
    var hasTurbo: Bool

    // The subclass has its own initializer to initialize its property 
    // and the superclass, Car
    init(color: Color, turbo: Bool) {
        // Subclasses must first initialize their own properties
        self.hasTurbo = turbo

        // Then initialization of superclasses is allowed
        super.init(color: color)
    }
}

















