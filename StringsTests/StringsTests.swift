//
//  StringsTests.swift
//  StringsTests
//
//  Created by Илья on 21.02.2025.
//

import Testing
@testable import Strings

struct StringsTests {

    @Test("Test 1 of the task1") func task1_1() async throws {
        let str = "Hello world!"
        let reversedString = reverseString(for: str)
        let expectedResult = "!dlrow olleH"

        #expect(reversedString == expectedResult)
    }

    @Test("Test 2 of the task1") func task1_2() async throws {
        let str = "I see you"
        let reversedString = reverseString(for: str)
        let expectedResult = "I see you"

        #expect(reversedString != expectedResult)
    }

    @Test("Test 1 of the task2") func task2_1() async throws {
        let str = "repaper"
        let isPalindrome = checkIsPalindrome(for: str)
        let expectedResult = true

        #expect(isPalindrome == expectedResult)
    }

    @Test("Test 2 of the task2") func task2_2() async throws {
        let str = "Borrow or rob?"
        let isPalindrome = checkIsPalindrome(for: str)
        let expectedResult = true

        #expect(isPalindrome == expectedResult)
    }

    @Test("Test 3 of the task2") func task2_3() async throws {
        let str = "Sir, I demand, I am a maid named Iris"
        let isPalindrome = checkIsPalindrome(for: str)
        let expectedResult = true

        #expect(isPalindrome == expectedResult)
    }

    @Test("Test 4 of the task2") func task2_4() async throws {
        let str = "I see you, you are on private territory 😈"
        let isPalindrome = checkIsPalindrome(for: str)
        let expectedResult = false

        #expect(isPalindrome == expectedResult)
    }

    @Test("Test 1 of the task3") func task3_1() async throws {
        let str = "Hello"
        let freq = characterFrequency(in: str)
        let expectedResult: [Character: Int] = [
            "H": 1,
            "e": 1,
            "l": 2,
            "o": 1
        ]

        #expect(freq == expectedResult)
    }

    @Test("Test 2 of the task3") func task3_2() async throws {
        let str = ""
        let freq = characterFrequency(in: str)
        let expectedResult: [Character: Int] = [:]

        #expect(freq == expectedResult)
    }

    @Test("Test 1 of the task4") func task4_1() async throws {
        let str = "Hello, I am Ilya"
        let target = "Ilya"
        let replacement = "Chill guy"

        let replacementResult = replaceSubstring(in: str, target: target, replacement: replacement)
        let expectedResult = "Hello, I am Chill guy"

        #expect(replacementResult == expectedResult)
    }

    @Test("Test 2 of the task4") func task4_2() async throws {
        let str = "Please, delete the apple"
        let target = " apple"
        let replacement = ""

        let replacementResult = replaceSubstring(in: str, target: target, replacement: replacement)
        let expectedResult = "Please, delete the"

        #expect(replacementResult == expectedResult)
    }

    @Test("Test 3 of the task4") func task4_3() async throws {
        let str = "Please, do noting"
        let target = "nothing"
        let replacement = "nothing"

        let replacementResult = replaceSubstring(in: str, target: target, replacement: replacement)
        let expectedResult = "Please, do noting"

        #expect(replacementResult == expectedResult)
    }

    @Test("Test 1 of the task5") func task5_1() async throws {
        let str = "1223334444"

        let replacementResult = lengthOfLongestSubstring(str)
        let expectedResult = 2

        #expect(replacementResult == expectedResult)
    }

    @Test("Test 2 of the task5") func task5_2() async throws {
        let str = ""

        let replacementResult = lengthOfLongestSubstring(str)
        let expectedResult = 0

        #expect(replacementResult == expectedResult)
    }

    @Test("Test 3 of the task5") func task5_3() async throws {
        let str = "anviaj"

        let replacementResult = lengthOfLongestSubstring(str)
        let expectedResult = 5

        #expect(replacementResult == expectedResult)
    }

}
