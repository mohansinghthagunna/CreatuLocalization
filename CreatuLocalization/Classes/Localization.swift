//
//  Localization.swift
//  Creatu
//
//  Created by Mohan on 6/27/18.
//  Copyright © 2018 Mohan. All rights reserved.
//

import UIKit

public struct Localization {


    /// Start you swizzling process
    public static func startSwizzling() {
        CreatuLocalizer.startSwizzling()
    }


    /// Switch your current language to other one
    ///
    /// - Parameter lang: new language
    public static func switchLanguage(to lang:String = "en") {
        CreatuLanguage.setAppleLAnguageTo(lang: lang)
    }


    /// set Right to left supported language default is ar
    ///
    /// - Parameter langs: array of string
    public static func rtlLanguages(_ langs:[String]) {
        CreatuLanguage.rtlSupportedLanguages = langs
    }


    /// checking current application screen
    ///
    /// - Returns: if current application is right to left it return true
    public static func currentScreenIsRightToLeft() -> Bool {
        return UIApplication.isRTL()
    }


    /// get you apple language
    public static func currentAppleLanguage() -> String {
        return CreatuLanguage.currentAppleLanguage()
    }

    /// refresh your application and set it to root view controller witn animation
    ///
    /// - Parameters:
    ///   - refreshViewController: root view controller
    ///   - animation: transition animaiton
    public static func refreshToRootViewController(_ refreshViewController:UIViewController, withAnimation animation: UIViewAnimationOptions = .transitionCrossDissolve) {

        refreshToRootViewController(refreshViewController)

        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)

        UIView.transition(with: mainwindow, duration: 0.55001, options: animation, animations: { () -> Void in
        }) { (finished) -> Void in

        }

    }


    /// refresh your application and set it to root view controller
    ///
    /// - Parameter refreshViewController: root view controller
    public static func refreshToRootViewController(_ refreshViewController:UIViewController) {

        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = refreshViewController

    }


    /// refresh your application witn animation
    ///
    /// - Parameters:
    ///   - storyBoard: storyboard name
    ///   - identifier: view controller identifier
    ///   - animation: transition animaiton
    public static func refreshStoryBoard(_ storyBoard:String, withIdentifier identifier:String, withAnimation animation: UIViewAnimationOptions = .transitionCrossDissolve) {

        refreshStoryBoard(storyBoard, withIdentifier: identifier)

        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)

        UIView.transition(with: mainwindow, duration: 0.55001, options: animation, animations: { () -> Void in
        }) { (finished) -> Void in

        }

    }


    ///  refresh your application
    ///
    /// - Parameters:
    ///   - storyBoard: storyboard name
    ///   - identifier: view controller identifier
    public static func refreshStoryBoard(_ storyBoard:String, withIdentifier identifier:String) {

        guard let window = UIApplication.shared.delegate?.window else { debugPrint("Invalid application window.."); return }
        guard let mainWIndow = window else { debugPrint("Invalid application window.."); return }
        let rootviewcontroller = UIStoryboard(name: storyBoard, bundle: nil).instantiateViewController(withIdentifier: identifier)
        mainWIndow.rootViewController = rootviewcontroller

    }
}

extension String {
    
    /// change your string to localization string
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }


    /// change your string to localization string
    ///
    /// - Parameter comment: localization comment
    /// - Returns: return your localization string
    public func localized(comment:String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
