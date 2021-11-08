//
//  CharacterIntroduction.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI
import AVKit

struct CharacterIntroduction: View {
    @State var player: AVAudioPlayer?

    var body: some View {
        NavigationView {
            List {
                Section {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            let rows = [GridItem()]

                            LazyHGrid(rows: rows) {
                                ForEach(0..<8) { i in
                                    Image("tier\(i)")
                                        .interpolation(.none)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 48, height: 48)
                                        .scaleEffect(0.75)
                                        .clipShape(Circle())
                                        .background(Circle().fill(.gray))
                                        .scaleEffect(0.9)
                                        .overlay(Circle().stroke(.gray))
                                        .scaleEffect(0.9)
                                }
                            }
                        }
                    }
                } header: {
                    Text("Dooms")
                }

                Section {
                    ForEach(Character.characters) { character in
                        NavigationLink {
                            CharacterDetail(character: character, player: $player)
                        } label: {
                            CharacterRow(character: character)
                        }
                    }
                } header: {
                    Text("人物")
                }
            }
            .navigationTitle("人物介紹")
        }
    }
}

struct CharacterIntroduction_Preview: PreviewProvider {
    static var previews: some View {
        CharacterIntroduction()
            .preferredColorScheme(.dark)
    }
}
