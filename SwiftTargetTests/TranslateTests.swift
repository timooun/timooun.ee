//
//  TranslateTests.swift
//  SwiftTargetTests
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

import XCTest
@testable import SwiftTarget

class TranslateTests: XCTestCase {

    func testTranslatingValidKey() {
        let expected = "Translating works!"

        let actual = translate("translate_me", fallback: "__failing test__")

        XCTAssertEqual(actual, expected)
    }

    func testNotTranslatingInvalidKey() {
        let expected = "__failing test__"

        let actual = translate("does_not_exist", fallback: "__failing test__")

        XCTAssertEqual(actual, expected)
    }
    
}
