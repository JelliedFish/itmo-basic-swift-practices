//
//  ClosuresTests.swift
//  ClosuresTests
//
//  Created by Илья on 04.03.2025.
//

import Testing
@testable import Closures

struct ClosuresTests {

    @Test("Test 1 of the task1") func task1_1() async throws {
        let a = 1
        let b = 2
        let expectedResult = 3
        let result = sumClosure(a, b)
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task2") func task2_1() async throws {
        let a = 1
        let b = 2
        let additionClosure: (Int, Int) -> Int = { $0 + $1 }
        let expectedResult = 3
        let result = performOperation(a: a, b: b, operationClosure: additionClosure)
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task2") func task2_2() async throws {
        let a = 1
        let b = 2
        let multiplicationClosure: (Int, Int) -> Int = { $0 * $1 }
        let expectedResult = 2
        let result = performOperation(a: a, b: b, operationClosure: multiplicationClosure)
        #expect(expectedResult == result)
    }

    @Test("Test 1 of the task3") func task3_1() async throws {
        let incrementByTwo = createIncrementer(incrementAmount: 2)

        let expectedResult = 2
        let result = incrementByTwo()
        #expect(expectedResult == result)
    }

    @Test("Test 2 of the task3") func task3_2() async throws {
        let incrementByFive = createIncrementer(incrementAmount: 5)

        let expectedResult1 = 5
        let expectedResult2 = 10
        let result1 = incrementByFive()
        let result2 = incrementByFive()
        #expect(expectedResult1 == result1)
        #expect(expectedResult2 == result2)
    }

    @Test("Test 1 of the task4") func task4_1() async throws {
        let counter = Counter()

        let expectedResult1 = 1
        let expectedResult2 = 2
        let incrementCounter = counter.increment()
        let result1 = incrementCounter()
        let result2 = incrementCounter()
        #expect(expectedResult1 == result1)
        #expect(expectedResult2 == result2)
    }
}
