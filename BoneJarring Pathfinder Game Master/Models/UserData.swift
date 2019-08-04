//
//  UserData.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 8/3/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var name: String {
        willSet(newValue) {
            if newValue == "" {
                loggedIn = false
            } else {
                loggedIn = true
            }
            let defaults = UserDefaults.standard
            defaults.set(newValue, forKey: "UserName")
        }
    }
    @Published var loggedIn: Bool

    init() {
        let defaults = UserDefaults.standard
        let userNameDef = defaults.string(forKey: "UserName")
        if let user = userNameDef {
            name = user
            if user == "" {
                loggedIn = false
            } else {
                loggedIn = true
            }
        } else {
            name = ""
            loggedIn = false
        }
    }
    
}
