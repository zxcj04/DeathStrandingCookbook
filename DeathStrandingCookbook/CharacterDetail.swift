//
//  CharacterDetail.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI

struct CharacterDetail: View {
    var character: Character
    @State var hidden: Bool = true
    @State var moveIn: Double = 300

    var body: some View {
        VStack {
            ScrollView {
                Image(character.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)

                HStack {
                    Text(character.name)
                        .font(.title)

                    Image("tier\(character.Dooms)")
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                }.padding(.horizontal)

                Spacer()

                Text(character.introduction)
                    .padding()
                    .offset(x: moveIn)
                    .animation(.easeIn, value: moveIn)
            }
            .opacity(hidden ? 0: 1)
            .animation(.easeIn, value: hidden)
        }.onAppear {
            self.hidden = false
            self.moveIn = 0
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: Character.characters[8])
            .preferredColorScheme(.dark)
    }
}
