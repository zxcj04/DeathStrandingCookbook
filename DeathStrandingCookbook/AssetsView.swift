//
//  AssetsView.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/8.
//

import SwiftUI
import AVKit

struct AssetsView: View {
    @State private var videoPlayer = AVPlayer(url: Bundle.main.url(forResource: "mainVideo", withExtension: "mp4")!)
    @State private var hidden: Bool = true

    var body: some View {
        VStack {
            ScrollView(.vertical) {

                VideoPlayer(player: videoPlayer)
                    .scaledToFit()
                
                HStack {
                    Spacer()

                    Link(destination: URL(string: "https://www.youtube.com/watch?v=KevFGaS298s")!, label: {
                        Image(systemName: "link.circle")
                    })
                        .padding(.horizontal)
                }
            
                let columns = [GridItem(.adaptive(minimum: 150))]
                LazyVGrid(columns: columns) {
                    ForEach(0..<21) { tier in
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.25)
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                Image("media\(tier)")
                                    .resizable()
                                    .scaledToFill()
                                    .opacity(hidden ? 0: 1)
                                    .animation(.easeInOut(duration: 1.5), value: hidden)
                            )
                            .cornerRadius(10)
                            .clipped()
                    }
                }
            }
            .onAppear {
                self.hidden = false
            }
        }.navigationTitle("媒體展示")
    }
}

struct AssetsView_Previews: PreviewProvider {
    static var previews: some View {
        AssetsView()
    }
}
