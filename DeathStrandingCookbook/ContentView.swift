//
//  ContentView.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 3

    var body: some View {
        TabView(selection: $selection) {
            CharacterIntroduction()
                .tabItem {
                    Label("人物介紹", systemImage: "person.circle")
                }
                .tag(1)

            RewardIntroduction()
                .tabItem {
                    Label("獎勵整理", systemImage: "gift.circle.fill")
                }
                .tag(2)
            
            RoadMap()
                .tabItem {
                    Label("公路系統", systemImage: "map.circle.fill")
                }
                .tag(3)
            
            AssetsView()
                .tabItem {
                    Label("媒體展示", systemImage: "photo.circle.fill")
                }

            IconSwitch()
                .tabItem {
                    Label("切換 Icon", systemImage: "pencil.circle.fill")
                }
                .tag(4)
        }
        .onAppear {
            let barAppearance = UITabBarAppearance()
            
            barAppearance.configureWithDefaultBackground()
            
            UITabBar.appearance().standardAppearance = barAppearance
            UITabBar.appearance().scrollEdgeAppearance = barAppearance
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
