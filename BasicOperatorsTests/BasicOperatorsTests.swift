//
//  BasicOperatorsTests.swift
//  BasicOperatorsTests
//
//  Created by Илья on 21.02.2025.
//

import Testing
@testable import BasicOperators

struct BasicOperatorsTests {

    @Test("Test of the task1") func task1() async throws {
        let x1 = 5
        let x2 = 6

        let difference = calculateDifference(of: x1, with: x2)
        let expectedDifference = -1
        #expect(difference == expectedDifference)
    }

    @Test("Test of the task2") func task2() async throws {
        let x1 = 556

        let lastDigit = findLastDigit(of: x1)
        let expectedLastDigit = 6
        #expect(lastDigit == expectedLastDigit)
    }

    @Test("Test of the task3") func task3() async throws {
        let x1 = 556
        let x2 = 239

        let calculatedAllResult = calculateAll(of: x1, with: x2)
        let expectedCalculatedAllResult = [
            "-": 317,
            "+": 795,
            "/": 2,
            "*": 132884,
            "%": 78
        ]
        #expect(calculatedAllResult == expectedCalculatedAllResult)
    }

    @Test("Test of the task4") func task4() async throws {
        let age1 = 11
        let age2 = 30
        let age3 = 20

        let calculatedListOfAges = sortTheAge(age1: age1, age2: age2, age3: age3)
        let expectedCalculatedListOfAges = ["11", "20", "30"]
        #expect(calculatedListOfAges == expectedCalculatedListOfAges)
    }

    @Test("Test 1 of the task5") func task5_1() async throws {
        let a = 1.0
        let b = 4.0
        let c = 5.0

        let roots = findRoots(a: a, b: b, c: c)
        let expectedRoots = (0.0, 0.0)
        #expect(roots == expectedRoots)
    }

    @Test("Test 2 of the task5") func task5_2() async throws {
        let a = 1.0
        let b = 4.0
        let c = -7.0

        let roots = findRoots(a: a, b: b, c: c)
        let expectedRoots = (1.32, -5.32)
        #expect(roots == expectedRoots)
    }
}
