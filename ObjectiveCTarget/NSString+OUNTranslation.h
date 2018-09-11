//
//  NSString+OUNTranslation.h
//  ObjectiveCTarget
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (OUNTranslation)

/*!
 @discussion Category version of the localization wrapper.
 @param fallback String to return if the localizable string is nil or if it cannot be found from the localization table.
 */
- (NSString *)oun_translatedStringWithFallback:(NSString *)fallback;

@end
