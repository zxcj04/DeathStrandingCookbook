//
//  ContentView.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CharacterIntroduction()
                .tabItem {
                    Label("人物介紹", systemImage: "person.circle")
                }

            RewardIntroduction()
                .tabItem {
                    Label("獎勵整理", systemImage: "gift.circle.fill")
                }
            
            RoadMap()
                .tabItem {
                    Label("公路系統", systemImage: "map.circle.fill")
                }

            IconSwitch()
                .tabItem {
                    Label("切換 Icon", systemImage: "pencil.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
