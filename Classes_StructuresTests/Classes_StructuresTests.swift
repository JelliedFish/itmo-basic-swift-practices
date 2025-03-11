//
//  Classes_StructuresTests.swift
//  Classes_StructuresTests
//
//  Created by Илья on 04.03.2025.
//

import Testing
@testable import Classes_Structures

struct Classes_StructuresTests {

    @Test("Test 1 of the task1") func task1_1() async throws {
        let person = Person(firstName: "John", lastName: "Doe", age: 30, address: "123 Main St")
        let expectedResult = "John Doe"
        let result = person.fullName()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task1") func task1_2() async throws {
        let person = Person(firstName: "Jane", lastName: "Doe", age: 25, address: "456 Maple Dr")
        let expectedResult = "Jane Doe, Age: 25, Address: 456 Maple Dr"
        let result = person.info()
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task2") func task2_1() async throws {
        let rectangle = Rectangle(width: 5.0, height: 10.0)
        let expectedResult = 50.0
        let result = rectangle.area()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task2") func task2_2() async throws {
        let rectangle = Rectangle(width: 5.0, height: 10.0)
        let expectedResult = 30.0
        let result = rectangle.perimeter()
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task3") func task3_1() async throws {
        let book = Book(title: "1984", author: "George Orwell", pages: 328)
        let expectedResult = "1984, Author: George Orwell, Pages: 328"
        let result = book.info()
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task4") func task4_1() async throws {
        let account = BankAccount()
        account.deposit(amount: 100.0)
        let expectedResult = 100.0
        let result = account.getBalance()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task4") func task4_2() async throws {
        let account = BankAccount()
        account.deposit(amount: 100.0)
        account.withdraw(amount: 50.0)
        let expectedResult = 50.0
        let result = account.getBalance()
        #expect(expectedResult == result)
    }

    @Test("Test 3 of the task4") func task4_3() async throws {
        let account = BankAccount()
        account.deposit(amount: 100.0)
        account.withdraw(amount: 150.0)
        let expectedResult = 100.0
        let result = account.getBalance()
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task5") func task5_1() async throws {
        let car = Car(make: "Toyota", model: "Supra", year: 1997)
        car.accelerate(by: 30.0)
        let expectedResult = "Make: Toyota, Model: Supra, Year: 1997, Current Speed: 30.0"
        let result = car.info()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task5") func task5_2() async throws {
        let car = Car(make: "Toyota", model: "Supra", year: 1997)
        car.accelerate(by: 50.0)
        car.decelerate(by: 20.0)
        let expectedResult = "Make: Toyota, Model: Supra, Year: 1997, Current Speed: 30.0"
        let result = car.info()
        #expect(expectedResult == result)
    }

    @Test("Test 3 of the task5") func task5_3() async throws {
        let car = Car(make: "Toyota", model: "Mark 2", year: 2004)
        car.accelerate(by: 50.0)
        car.decelerate(by: 60.0)
        let expectedResult = "Make: Toyota, Model: Mark 2, Year: 2004, Current Speed: 0.0"
        let result = car.info()
        #expect(expectedResult == result)
    }
}
