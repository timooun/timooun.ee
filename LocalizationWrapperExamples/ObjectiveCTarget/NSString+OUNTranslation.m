//
//  NSString+OUNTranslation.m
//  ObjectiveCTarget
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import "NSString+OUNTranslation.h"

@implementation NSString (OUNTranslation)

- (NSString *)oun_translatedStringWithFallback:(NSString *)fallback {
    return [[NSBundle mainBundle] localizedStringForKey:self value:fallback table:nil];
}

@end
