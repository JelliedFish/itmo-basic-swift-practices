//
//  Task5.swift
//  Classes_Structures
//
//  Created by Илья on 04.03.2025.
//

/**
 A class representing a car.

 This class includes properties for make, model, year, and current speed,
 along with methods for increasing and decreasing the speed.

 Properties:
 - `make: String` - The make of the car.
 - `model: String` - The model of the car.
 - `year: Int` - The year of manufacture.
 - `currentSpeed: Double` - The current speed of the car.

 Methods:
 - `accelerate(by speed: Double)`: Increases the current speed by the specified amount.
 - `decelerate(by speed: Double)`: Decreases the current speed by the specified amount, ensuring it doesn’t fall below zero.
 - `info() -> String`: Returns a string with information about the car
   in the format: "Make: Make, Model: Model, Year: Year, Current Speed: Speed".
*/
class Car {
    var make: String = String()
    var model: String = String()
    var year: Int = 0
    private var currentSpeed: Double = 0.0

    init(make: String, model: String, year: Int) {
        // Initialize properties
    }

    func accelerate(by speed: Double) {
        // Increase the current speed
    }

    func decelerate(by speed: Double) {
        // Decrease the current speed, not below zero
    }

    func info() -> String {
        // Return information about the car
        return String()
    }
}
