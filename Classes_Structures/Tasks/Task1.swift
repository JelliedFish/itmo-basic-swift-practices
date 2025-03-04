//
//  Task1.swift
//  Classes_Structures
//
//  Created by Илья on 04.03.2025.
//

/**
 A class representing a person.

 Create a `Person` class that represents a person with first name, last name, age, and address. The class should include a method for displaying information about the person.

 Properties:
 - `firstName: String` - The first name of the person.
 - `lastName: String` - The last name of the person.
 - `age: Int` - The age of the person.
 - `address: String` - The address of the person.

 Methods:
 - `fullName() -> String`: Returns the full name of the person.
 - `info() -> String`: Returns a string with the person's details in the format: "First Last, Age: X, Address: Y".
*/
class Person {
    var firstName: String = String()
    var lastName: String = String()
    var age: Int = 0
    var address: String = String()

    init(firstName: String, lastName: String, age: Int, address: String) {
        // Initialize properties
    }

    func fullName() -> String {
        // Return the full name
        return String()
    }

    func info() -> String {
        // Return the information about the person
        return String()
    }
}
