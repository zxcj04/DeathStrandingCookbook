//
//  RewardIntroduction.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/5.
//

import SwiftUI

struct RewardIntroduction: View {
    @State var searchText: String = ""

    var searchResults: [RewardLocation] {
        if searchText.isEmpty {
            return RewardLocation.locations
        } else {
            let searchTextLower = searchText.lowercased()
            return RewardLocation.locations.filter {
                $0.name.lowercased().contains(searchTextLower) || $0.rewards.filter {
                    $0.name.lowercased().contains(searchTextLower)
                }.count > 0
            }
        }
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults) { location in
                    Section {
                        ForEach(location.rewards) { reward in
                            NavigationLink {

                            } label: {
                                Text(reward.name)
                            }
                        }
                    } header: {
                        Text(location.name)
                    }
                }
            }
            .searchable(text: $searchText, prompt: "據點名稱或獎勵名稱")
            .navigationTitle(Text("獎勵整理"))
        }
    }
}

struct RewardIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        RewardIntroduction()
            .preferredColorScheme(.dark)
    }
}
