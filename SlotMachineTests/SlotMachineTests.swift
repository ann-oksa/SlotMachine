//
//  SlotMachineTests.swift
//  SlotMachineTests
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import XCTest
@testable import SlotMachine

class SlotMachineTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

    func testCheckChangingRandomNumber() throws {
        let randomizer = IntRandomizer()
        var randomNumber = randomizer.getRandomNumber()
        let a = randomNumber
        randomNumber = randomizer.getRandomNumber()
        let b = randomNumber
        XCTAssertNotEqual(a, b, "They must be not equal")
    }
    
    func testIsJackpotWhenDigitsAreEqual() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 1
        triplet.two = 1
        triplet.three = 1
        let result = analyzer.isJackpot(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because digits must be equal")
    }
    
    func testIsJackpotWhenDigitsAreNotEqual() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 1
        triplet.two = 2
        triplet.three = 3
        let result = analyzer.isJackpot(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because digits are not equal")
    }
    
    func testIsOddWhenDigitsAreOdd() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 5
        triplet.three = 7
        let result = analyzer.isOdd(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because all digits must be odd")
    }
    
    func testIsOddWhenDigitsAreNotOdd() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 8
        triplet.three = 7
        let result = analyzer.isOdd(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because not all digits are odd")
    }
    
    func testIsEvenWhenDigitsAreEven() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 2
        triplet.two = 6
        triplet.three = 6
        let result = analyzer.isEven(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because all digits must be even")
    }
    
    func testIsEvenWhenDigitsAreNotEven() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 2
        triplet.two = 6
        triplet.three = 7
        let result = analyzer.isEven(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because not all digits are even")
    }
    
    func testIsUpWhenDigitsGoUp() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 4
        triplet.three = 5
        let result = analyzer.isUp(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because all digits go up")
    }
    
    func testIsUpWhenNotAllDigitsGoUp() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 5
        triplet.three = 5
        let result = analyzer.isUp(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because not all digits go up")
    }
    
    func testIsDownWhenDigitsGoDown() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 6
        triplet.two = 5
        triplet.three = 3
        let result = analyzer.isDown(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because all digits go down")
    }
    
    func testIsDownWhenDigitsDontGoDown() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 7
        triplet.two = 5
        triplet.three = 7
        let result = analyzer.isDown(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because not all digits go down")
    }
    
    func testIsFibonacciWhenSumOfFirstAndSecondDigitsIsEqualToThird() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 5
        triplet.three = 8
        let result = analyzer.isFibonacci(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because sum of first and second digits is equal to third digit")
    }
    
    func testIsFibonacciWhenSumOfFirstAndSecondDigitsIsNotEqualToThird() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 3
        triplet.two = 5
        triplet.three = 7
        let result = analyzer.isFibonacci(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because sum of first and second digits is not equal to third digit")
    }
    
    func testGetWinningCombinationFromTripletWhenThereAreNotWinningCombination() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 0
        triplet.two = 1
        triplet.three = 0
        let result = analyzer.getWinningCombinationFromTriplet(triplet: triplet)
        XCTAssertEqual(result, ["Nothing"], "The result must be nothing because triplet is not winning")
    }
    
    func testIsPrimeWhenSumOfTripletIsPrimeNumber() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 1
        triplet.two = 3
        triplet.three = 3
        let result = analyzer.isPrime(triplet: triplet)
        XCTAssertEqual(result, true, "The result must be true because sum of triplet is prime number")
    }
    
    func testIsPrimeWhenSumOfTripletIsNotPrimeNumber() throws {
        let randomizer = IntRandomizer()
        let analyzer = Analyzer()
        let triplet = Triplet(randomizer: randomizer)
        triplet.one  = 1
        triplet.two = 3
        triplet.three = 4
        let result = analyzer.isPrime(triplet: triplet)
        XCTAssertEqual(result, false, "The result must be false because sum of triplet is not prime number")
    }


}
