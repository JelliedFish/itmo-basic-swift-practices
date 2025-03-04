//
//  OptionalTests.swift
//  OptionalTests
//
//  Created by Илья on 03.03.2025.
//

import Testing
@testable import Optional

struct OptionalTests {

    @Test("Test 1 of the task1") func task1_1() async throws {
        let str = "Hello!"
        let expectedResult = 6
        let result = getLength(for: str)
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task1") func task1_2() async throws {
        let str: String? = nil
        let expectedResult: Int? = nil
        let result = getLength(for: str)
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task2") func task2_1() async throws {
        let str = "Car and Japan"
        let expectedResult = "CAR AND JAPAN"
        let result = toUppercase(str)
        #expect(expectedResult == result)
    }


    @Test("Test 2 of the task2") func task2_2() async throws {
        let str: String? = nil
        let expectedResult: String? = nil
        let result = toUppercase(str)
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task3") func task3_1() async throws {
        let company = Company(employees: [Person(name: "Alice", age: 30), Person(name: "Bob", age: nil), Person(name: "Charlie", age: 25)])
        let expectedResult = Person(name: "Charlie", age: 25)
        let result = company.youngestEmployee()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task3") func task3_2() async throws {
        let company = Company(employees: [Person(name: "Alice", age: nil), Person(name: "Bob", age: nil), Person(name: "Charlie", age: nil)])
        let expectedResult: Person? = nil
        let result = company.youngestEmployee()
        #expect(expectedResult == result)
    }

    @Test("Test 3 of the task3") func task3_3() async throws {
        let company = Company(employees: [])
        let expectedResult: Person? = nil
        let result = company.youngestEmployee()
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task4") func task4_1() async throws {
        let database = ["apple", "banana", "orange"]
        let query = "ban"
        let expectedResult = "banana"
        let result = find(in: database, for: query)
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task4") func task4_2() async throws {
        let database = ["red apple", "yellow banana", "orange"]
        let query = "red"
        let expectedResult = "red apple"
        let result = find(in: database, for: query)
        #expect(expectedResult == result)
    }

    @Test("Test 3 of the task4") func task4_3() async throws {
        let database = ["red apple", "yellow banana", "orange"]
        let query = "car"
        let expectedResult: String? = nil
        let result = find(in: database, for: query)
        #expect(expectedResult == result)
    }
}
