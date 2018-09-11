//
//  Translate.swift
//  SwiftTarget
//
//  Created by Timo Õun on 11/09/2018.
//  Copyright © 2018 Timo Õun. All rights reserved.
//

import Foundation

/**
 Swift version of the localization wrapper.
 - parameter string: String to be localized.
 - parameter fallback: String to return if the localizable string is nil or if it cannot be found from the localization table.
 */
func translate(_ string: String, fallback: String?) -> String {
    return Bundle.main.localizedString(forKey: string, value: fallback, table: nil)
}
