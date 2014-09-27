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



class Apartment {
    var tenant: Person?
}

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


class License {
    weak var person : Driver?
}

class Driver {
    weak var license: License?

    func getLicense(license: License) {
        self.license = license
        license.person = self
    }
}

var drivers = ["Larry": Driver()]
var licenses = [42: License()]
drivers["Larry"]!.getLicense(licenses[42]!)

drivers["Larry"] = nil
licenses[42] = nil















