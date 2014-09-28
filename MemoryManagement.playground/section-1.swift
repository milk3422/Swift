import UIKit

/*****************************************************************************
* Memory Management in Swift
*
* Swift uses Automatic Reference Counting to handle memory management. When an
* object has zero references the object is removed form memory.
*
* There are three main types of references available
* - Strong References
* - Weak References
* - Unowned References
*
*****************************************************************************/


/*****************************************************************************
* Strong References
* 
* Objects get reclaimed when they have 0 references. This will occur when a 
* reference gets reassigned or the reference goes out of scope.
*****************************************************************************/


class BowlingPin {}

func juggle(count: Int) {
    // An object is created with a reference 'left'
    var left = BowlingPin()

    if count > 1 {
        // Another object is created with a reference 'right'
        var right = BowlingPin()

        // The reference 'right' get re-assigned to the object being referenced
        // by 'left'. This causes the object previously referenced by 'right'
        // to be removed
        right = left
    }

    // When the reference 'right' goes out of scope the reference from the objet
    // is removed, but 'left' still references that object
}
// When the reference 'left' goes out of scope the object it was referencing
// is removed because it contains no other references

/*****************************************************************************
* Weak References
* 
* Weak references are great for objects that have circular references.
* It allows objects with circular references to be removed.
*
* Weak references must: 
* - be optional because they must be resettable to nil
* - be mutable (They can not be defined with 'let')
*****************************************************************************/

// An apartment class with a strong reference to a person
class Apartment {
    var tenant: Person?
}

// A person class that creates a strong circular reference to an Apartment
class Person {
    var home: Apartment?

    func moveIn(apt: Apartment) {
        self.home = apt
        apt.tenant = self
    }
}

// Move John into an apartment
var renters = ["John": Person()]
var apartments = [72: Apartment()]
renters["John"]!.moveIn(apartments[72]!)

// When john moves out and/or the apartment is removed both objects still exist
// because of the circular reference
renters["John"] = nil
apartments[72] = nil

// A License class with a weak reference to a Driver object
class License {
    weak var person : Driver?
}

// A Driver class that creates a circular reference to a License Object
class Driver {
    weak var license: License?

    func getLicense(license: License) {
        self.license = license
        license.person = self
    }
}

// Create a dictionary of drivers and licenses
var drivers = ["Larry": Driver()]
var licenses = [42: License()]

// Assign the driver a license which will assign the license to a person
drivers["Larry"]!.getLicense(licenses[42]!)

// If you remove the reference to the driver the driver object gets removed
// and the license object sticks around
drivers["Larry"] = nil

// If you remove the reference to the license object the license object gets
// removed
licenses[42] = nil

/*****************************************************************************
* Unowned Reference
*
* Unowned references allow objects to be removed from memory when they no 
* longer have an owner
*****************************************************************************/

// An Owner class with a strong reference to a CreditCard object
class Owner {
    var card : CreditCard?
}

// A CreditCard class that creates a circular reference to a License Object
class CreditCard {

    // Unowned keyword means the the object is dependent on having an onwer
    // If an owner does not exist, the CreditCard object does not exist
    unowned let owner: Owner

    init(holder: Owner) {
        self.owner = holder
    }
}

// Create a dictionary of owners
var owners = ["Mary": Owner()]

// Assign the owner 'Mary' a credit card
owners["Mary"]!.card = CreditCard(holder: owners["Mary"]!)

// When the reference to 'Mary' is removed the CreditCard object is also deleted
owners["Mary"] = nil




























