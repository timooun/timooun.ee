//
//  OUNTranslate.h
//  ObjectiveCTarget
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OUNTranslate : NSObject

/*!
 @discussion Objective-C class method version of the localization wrapper.
 @param string String to be localized.
 @param fallback String to return if the localizable string is nil or if it cannot be found from the localization table.
 */
+ (NSString *)translate:(NSString *)string fallback:(NSString *)fallback;

@end
