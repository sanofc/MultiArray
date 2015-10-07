//
//  MultiArrayTests.swift
//  MultiArrayTests
//
//  Created by Hiroyuki Sano on 10/7/15.
//  Copyright © 2015 Hiroyuki Sano. All rights reserved.
//

import XCTest
@testable import MultiArray

class MultiArrayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let ma = MultiArray<Float>(size:10,10)
        ma[1,1] = 10
        XCTAssertEqual(ma[1,1],10.0)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
