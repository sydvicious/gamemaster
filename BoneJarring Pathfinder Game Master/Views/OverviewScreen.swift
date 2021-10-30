//
//  ContentView.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 6/29/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import SwiftUI

struct OverviewScreen : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        HStack(alignment: .top) {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center) {
                    Text("Bone Jarring Game Master System")
                    Text("Campaign Name: Choria")
                    Text("Game Master Name: \(self.userData.name)")
                }.padding().border(Color.black, width: 2.0)
                Spacer()
                HStack(alignment: .top) {
                    Text("Hello World")
                    Spacer()
                    Text("Goodbye World")
                }.padding().border(Color.red, width: 2.0)
                Spacer()
            }.padding()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        OverviewScreen()
            .environmentObject(UserData())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro"))
    }
}
#endif
