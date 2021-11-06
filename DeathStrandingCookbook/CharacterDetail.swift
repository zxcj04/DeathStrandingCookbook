//
//  CharacterDetail.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/3.
//

import SwiftUI
import AVKit

struct CharacterDetail: View {
    var character: Character
    @State var hidden: Bool = true
    @State var moveIn: Double = 300
    @Binding var player: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    
    @State private var timer: Timer?
    
    func startVoice() {
        if let sound = Bundle.main.url(forResource: "Bgm_character_voice", withExtension: "mp3") {
            do {
                self.player?.stop()
                try self.player = AVAudioPlayer(contentsOf: sound)
                self.player?.play()
                self.player?.currentTime = character.voiceStart
                
                self.isPlaying = true

                self.timer?.invalidate()
                self.timer = Timer.scheduledTimer(
                    withTimeInterval: character.voiceEnd - character.voiceStart,
                    repeats: false,
                    block: { _ in
                        stopVoice()
                    }
                )
            }
            catch {
                print("error: \(error)")
            }
        }
    }

    func stopVoice() {
        self.player?.stop()
        
        self.isPlaying = false
    }

    var body: some View {
        VStack {
            ScrollView {
                Image(character.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)

                HStack {
                    Button {
                        if self.isPlaying {
                            stopVoice()
                        } else {
                            startVoice()
                        }
                    } label: {
                        Image(systemName: self.isPlaying ? "stop.circle": "play.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .scaleEffect(0.8)
                            .foregroundColor(.gray)
                    }

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
            
            startVoice()
        }.onDisappear() {
            self.timer?.invalidate()
            stopVoice()
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    @State static var player: AVAudioPlayer?

    static var previews: some View {
        CharacterDetail(character: Character.characters[8], player: $player)
            .preferredColorScheme(.dark)
    }
}
