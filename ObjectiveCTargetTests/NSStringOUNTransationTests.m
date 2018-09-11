//
//  NSStringOUNTransationTests.m
//  ObjectiveCTargetTests
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+OUNTranslation.h"

@interface NSStringOUNTransationTests : XCTestCase

@end

@implementation NSStringOUNTransationTests

- (void)testTranslatingValidKey {
    NSString *expected = @"Translating works!";

    NSString *actual = [@"translate_me" oun_translatedStringWithFallback:@"__failing test__"];

    XCTAssertTrue([actual isEqualToString:expected]);
}

- (void)testNotTranslatingInvalidKey {
    NSString *expected = @"__failing test__";

    NSString *actual = [@"does_not_exist" oun_translatedStringWithFallback:@"__failing test__"];

    XCTAssertTrue([actual isEqualToString:expected]);
}

@end
