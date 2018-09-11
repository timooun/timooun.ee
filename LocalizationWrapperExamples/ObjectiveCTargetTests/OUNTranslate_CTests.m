//
//  OUNTranslate_CTests.m
//  ObjectiveCTargetTests
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OUNTranslate_C.h"

@interface OUNTranslate_CTests : XCTestCase

@end

@implementation OUNTranslate_CTests

- (void)testTranslatingValidKey {
    NSString *expected = @"Translating works!";

    NSString *actual = OUNTranslate(@"translate_me", @"__failing test__");

    XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testNotTranslatingInvalidKey {
    NSString *expected = @"__failing test__";

    NSString *actual = OUNTranslate(@"does_not_exist", @"__failing test__");

    XCTAssertTrue([actual isEqualToString:expected]);
}

@end
