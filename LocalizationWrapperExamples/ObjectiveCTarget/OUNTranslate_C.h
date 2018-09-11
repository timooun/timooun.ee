//
//  OUNTranslate_C.h
//  LocalizationWrapperExamples
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

#ifndef OUNTranslate_C_h
#define OUNTranslate_C_h

/*!
 @discussion C function version of the localization wrapper. Easier and quicker to use than the Objective-C class method.
 @param string String to be localized.
 @param fallback String to return if the localizable string is nil or if it cannot be found from the localization table.
 */
NSString * OUNTranslate(NSString *string, NSString *fallback) {
    return [[NSBundle mainBundle] localizedStringForKey:string value:fallback table:nil];
}

#endif /* OUNTranslate_C_h */
