//
//  CollectionsTests.swift
//  CollectionsTests
//
//  Created by Илья on 21.02.2025.
//

import Testing
@testable import Collections

struct CollectionsTests {

    @Test("Test 1 of the task1") func task1_1() async throws {
        let input = [1, 2, 2, 3, 4, 4, 5]
        let uniqueElements = getUniqueElements(in: input).sorted()
        let expectedResult = [1, 2, 3, 4, 5].sorted()

        #expect(uniqueElements == expectedResult)
    }

    @Test("Test 2 of the task1") func task1_2() async throws {
        let input = [1, 2, 3, 4, 5]
        let uniqueElements = getUniqueElements(in: input).sorted()
        let expectedResult = [1, 2, 3, 4, 5]

        #expect(uniqueElements == expectedResult)
    }

    @Test("Test 3 of the task1") func task1_3() async throws {
        let input = [1, 1, 1, 1]
        let uniqueElements = getUniqueElements(in: input).sorted()
        let expectedResult = [1]

        #expect(uniqueElements == expectedResult)
    }

    @Test("Test 1 of the task2") func task2_1() async throws {
        let input = ["banana", "apple", "cherry", "date"]
        let sortedElements = sortStrings(input)
        let expectedResult = ["apple", "banana", "cherry", "date"]

        #expect(sortedElements == expectedResult)
    }

    @Test("Test 2 of the task2") func task2_2() async throws {
        let input: [String] = []
        let sortedElements = sortStrings(input)
        let expectedResult: [String] = []

        #expect(sortedElements == expectedResult)
    }

    @Test("Test 1 of the task3") func task3_1() async throws {
        let input = ["apple", "banana", "apple", "orange", "banana", "banana"]
        let frequencyElements = getFrequencyDictionary(from: input)
        let expectedResult = ["apple": 2, "banana": 3, "orange": 1]

        #expect(frequencyElements == expectedResult)
    }

    @Test("Test 2 of the task3") func task3_2() async throws {
        let input = ["apple", "apple", "apple"]
        let frequencyElements = getFrequencyDictionary(from: input)
        let expectedResult = ["apple": 3]

        #expect(frequencyElements == expectedResult)
    }

    @Test("Test 3 of the task3") func task3_3() async throws {
        let input: [String] = []
        let frequencyElements = getFrequencyDictionary(from: input)
        let expectedResult: [String: Int] = [:]

        #expect(frequencyElements == expectedResult)
    }

    @Test("Test 1 of the task4") func task4_1() async throws {
        let input = ["apple": 1, "banana": 2, "orange": 3]
        let value = value(forKey: "banana", in: input) as? Int
        let expectedResult = 2

        try #require(value != nil)
        #expect(value == expectedResult)
    }

    @Test("Test 2 of the task4") func task4_2() async throws {
        let input = ["apple": "🍏", "banana": "🍌", "orange": "🍊"]
        let value = value(forKey: "banana", in: input) as? String
        let expectedResult = "🍌"

        try #require(value != nil)
        #expect(value == expectedResult)
    }

    @Test("Test 3 of the task4") func task4_3() async throws {
        struct Point: Equatable {
            let x: Int
            let y: Int
        }

        let startPoint = Point(x: 0, y: 0)

        let input = ["start": startPoint, "I": Point(x: 1, y: 2), "II": Point(x: -1, y: 2)]
        let value = value(forKey: "start", in: input) as? Point
        let expectedResult = startPoint

        try #require(value != nil)
        #expect(value == expectedResult)
    }

    @Test("Test 1 of the task5") func task5_1() async throws {
        let array1 = [1, 2, 2, 3]
        let array2 = [2, 3, 4, 5]
        let uniqueResult = getUniqueElementsFromArrays(array1, array2).sorted()
        let expectedResult = [1, 2, 3, 4, 5].sorted()

        #expect(uniqueResult == expectedResult)
    }

    @Test("Test 2 of the task5") func task5_2() async throws {
        let array1 = [1, 1, 1]
        let array2 = [1, 1, 1]
        let uniqueResult = getUniqueElementsFromArrays(array1, array2)
        let expectedResult = [1]

        #expect(uniqueResult == expectedResult)
    }

}
