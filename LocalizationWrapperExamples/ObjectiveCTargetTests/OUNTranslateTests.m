//
//  OUNTranslateTests.m
//  ObjectiveCTargetTests
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OUNTranslate.h"

@interface OUNTranslateTests : XCTestCase

@end

@implementation OUNTranslateTests

- (void)testTranslatingValidKey {
    NSString *expected = @"Translating works!";

    NSString *actual = [OUNTranslate translate:@"translate_me" fallback:@"__failing test__"];

    XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testNotTranslatingInvalidKey {
    NSString *expected = @"__failing test__";

    NSString *actual = [OUNTranslate translate:@"does_not_exist" fallback:@"__failing test__"];

    XCTAssertTrue([actual isEqualToString:expected]);
}

@end
