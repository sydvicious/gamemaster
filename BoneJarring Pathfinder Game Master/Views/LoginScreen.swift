//
//  LoginScreen.swift
//  BoneJarring Pathfinder Game Master
//
//  Created by Syd Polk on 7/12/19.
//  Copyright © 2019 Syd Polk. All rights reserved.
//

import SwiftUI

struct LoginScreen : View {
    @EnvironmentObject var userData: UserData
    @State var proposedNewName: String

    var body: some View {
        VStack {
            VStack(alignment: HorizontalAlignment.leading) {
                Text("Welcome to the Bone Jarring Game Master System.")
                    .font(.largeTitle)
                Spacer()
                Text("Please let us know what name you would like to use.\n\n")
                    .lineLimit(3)
                TextField("Your name", text: $proposedNewName)
                    .multilineTextAlignment(.center)
                    .border(Color.gray, width: 2.0)
                    .font(.body)
                Text("\n\nAt some point, we are going to ask you to create an account to sync all of your data, and for other services and features. Stay tuned.\n\nAlso, at some point, we will have a real Privacy Policy telling you what data we collect, and why. Boy, that will be exciting.")
                    .lineLimit(10)
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.userData.name = self.proposedNewName
                    }) {
                        Text("Next")
                    }
                }
            }.padding()
            Spacer()
            Text("Copyright ©2019 Bone Jarring Games and Software, LLC")
            
        }
    }
}

#if DEBUG
struct LoginScreen_Previews : PreviewProvider {
    static var previews: some View {
        LoginScreen(proposedNewName: "")
            .environmentObject(UserData())
            .previewDevice(PreviewDevice(rawValue: "iPad Pro"))
    }
}
#endif
