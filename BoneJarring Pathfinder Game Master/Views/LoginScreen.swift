//
//  LoginScreen.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 7/12/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import SwiftUI

struct LoginScreen : View {
    @Binding var name: String
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to the Bone Jarring Game Master System.")
                    .font(.largeTitle)
                Spacer()
                Text("Please let us know what name you would like to use.")
                VStack(alignment:.leading) {
                    TextField("Name", text: $name)
                        .multilineTextAlignment(.center)
                        .border(Color.black, width: 2.0)
                        .font(.body)
                        .padding()
                }
                Spacer()
            }.padding()
            Spacer()
            Text("Copyright ©2019 Bone Jarring Games and Software, LLC")
        }
    }
}

#if DEBUG
struct LoginScreen_Previews : PreviewProvider {
    var name: String = "Your name"

    static var previews: some View {
        LoginScreen(name: .constant("Syd"))
    }
}
#endif
