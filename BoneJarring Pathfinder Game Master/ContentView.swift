//
//  ContentView.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 6/29/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            ScrollView() {
                VStack(alignment: .center) {
                    Text("Bone Jarring Game Master System")
                    Text("Campaign Name: Choria")
                    Text("Game Master Name: Syd Polk" )
                    }.padding().border(Color.black, width: 2.0)
                Spacer()
                HStack(alignment: .top) {
                    Text("Hello World")
                    Spacer()
                }.padding().border(Color.red, width: 2.0)
                Spacer()
            }.padding()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
