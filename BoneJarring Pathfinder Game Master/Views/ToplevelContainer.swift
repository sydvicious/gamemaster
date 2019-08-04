//
//  ToplevelContainer.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 8/3/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import SwiftUI

struct ToplevelContainer: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        Group {
            if !self.userData.loggedIn {
                LoginScreen(proposedNewName: "")
                    .environmentObject(userData)
            } else {
                OverviewScreen()
            }
        }
    }
}

#if DEBUG
struct ToplevelContainer_Previews: PreviewProvider {
    static var previews: some View {
        ToplevelContainer()
            .environmentObject(UserData())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro"))
    }
}
#endif
