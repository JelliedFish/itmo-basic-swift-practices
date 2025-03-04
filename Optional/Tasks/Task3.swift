//
//  Task3.swift
//  Optional
//
//  Created by Илья on 03.03.2025.
//

/// You are given the `Person` and  `Company` types. Realize the function which returns the youngest `Person`.
///
///  - Warning: If the `Person` array is empty, return `nil`. If all `Person` have `nil` for `age`, also return `nil'.
///
/// Level: 👍🏻

struct Person: Equatable {
    var name: String
    var age: Int?
}

struct Company {
    var employees: [Person]

    func youngestEmployee() -> Person? {
        // Write your solution here
        return nil
    }
}
