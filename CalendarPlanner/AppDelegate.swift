//
//  AppDelegate.swift
//  CalendarPlanner
//
//  Created by Сергей Горбачёв on 29.05.2020.
//  Copyright © 2020 Сергей Горбачёв. All rights reserved.
//

import UIKit
import RealmSwift


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let locale = NSLocale.preferredLanguages.first
        
        switch locale {
        case "ru": localcountry(local: "ru")
        case "az": localcountry(local: "az")
        case "hy": localcountry(local: "hy")
        case "be": localcountry(local: "be")
        case "ky": localcountry(local: "ky")
        case "uk": localcountry(local: "uk")
        case "tg": localcountry(local: "tg")
        case "tk": localcountry(local: "tk")
        case "uz": localcountry(local: "uz")
            
        default: localcountry(local: "en-GB")
        }
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func localcountry(local: String) {
        Bundle.setLanguage(local)
        UserDefaults.standard.set(local, forKey: "selectedLanguage")
    }
 
}

