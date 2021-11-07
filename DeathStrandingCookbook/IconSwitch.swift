//
//  IconSwitch.swift
//  D.S. Cookbook
//
//  Created by FanRende on 2021/11/5.
//

import SwiftUI

struct IconSwitch: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color.black, Color.white, Color.black], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("icon_1")
                            .resizable()
                            .scaledToFit()
                    }.padding()
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-2")
                    }) {
                        Image("icon_2")
                            .resizable()
                            .scaledToFit()
                    }.padding()
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-3")
                    }) {
                        Image("icon_3")
                            .resizable()
                            .scaledToFit()
                    }.padding()
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-4")
                    }) {
                        Image("icon_4")
                            .resizable()
                            .scaledToFit()
                    }.padding()
                }
                .navigationTitle("切換 Icon")
            }
        }
    }
}

struct IconSwitch_Previews: PreviewProvider {
    static var previews: some View {
        IconSwitch()
            .preferredColorScheme(.dark)
    }
}
