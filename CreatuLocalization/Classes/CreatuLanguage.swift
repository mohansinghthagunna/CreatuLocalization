//
//  CreatuLanguage.swift
//  Creatu

//  Created by Mohan on 6/27/18.
//  Copyright © 2018 Mohan. All rights reserved.
//

import UIKit

// constants
let APPLE_LANGUAGE_KEY = "AppleLanguages"

/// CreatuLanguage
struct CreatuLanguage {

    static var rtlSupportedLanguages:[String] = []
    static var rtlDefaultSupportedLanguages:[String] = ["ar"]

    static var isRTLLanguage: Bool {
        let currentLanguage = currentAppleLanguage()

        if rtlSupportedLanguages.count > 0 {
            return rtlSupportedLanguages.contains(currentLanguage)
        }
        return rtlDefaultSupportedLanguages.contains(currentLanguage)
    }

    /// get current Apple language
    static func currentAppleLanguage() -> String {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        let endIndex = current.startIndex
        let currentWithoutLocale = current.prefix(upTo: current.index(endIndex, offsetBy: 2))
        return String(currentWithoutLocale)
    }

    ///get current application language used
   static func currentAppleLanguageFull() -> String {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        return current
    }
    
    /// set @lang to be the first in Applelanguages list
    static func setAppleLAnguageTo(lang: String) {
        if currentAppleLanguage() != lang {
            let userdef = UserDefaults.standard
            userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
            userdef.synchronize()  
        } else {
            debugPrint("You can't switch same language")
        }

        if CreatuLanguage.isRTLLanguage {
            if #available(iOS 9.0, *) {
                UIView.appearance().semanticContentAttribute = .forceRightToLeft
            } else {
                // Fallback on earlier versions
            }
        } else {
            if #available(iOS 9.0, *) {
                UIView.appearance().semanticContentAttribute = .forceLeftToRight
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
