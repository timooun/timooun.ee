//
//  OUNTranslate.m
//  ObjectiveCTarget
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import "OUNTranslate.h"

@implementation OUNTranslate

+ (NSString *)translate:(NSString *)string fallback:(NSString *)fallback {
    return [[NSBundle mainBundle] localizedStringForKey:string value:fallback table:nil];
}

@end
