//
//  RewardIntroduction.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/5.
//

import SwiftUI

struct RewardIntroduction: View {
    @State var searchText: String = ""
    @State var searchExact: Bool = false

    var searchResults: [RewardLocation] {
        if searchText.isEmpty {
            return RewardLocation.locations
        } else {
            let searchTextLower = searchText.lowercased()

            if(searchExact)
            {
                var ret: [RewardLocation]

                ret = RewardLocation.locations.filter {
                    $0.name.lowercased().contains(searchTextLower)
                }

                if(ret.count <= 0)
                {
                    for newLocation in RewardLocation.locations {
                        let rewards = newLocation.rewards.filter {
                            $0.name.lowercased().contains(searchTextLower)
                        }

                        if(rewards.count > 0) {
                            ret.append(RewardLocation(name: newLocation.name, rewards: rewards))
                        }
                    }
                }

                return ret
            }
            else {
                return RewardLocation.locations.filter {
                    $0.name.lowercased().contains(searchTextLower) || $0.rewards.filter {
                        $0.name.lowercased().contains(searchTextLower)
                    }.count > 0
                }
            }
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle("精確搜尋", isOn: $searchExact)

                ForEach(searchResults) { location in
                    Section {
                        ForEach(location.rewards) { reward in
                            HStack {
                                Image("tier\(reward.claimLevel)")
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
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
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct RewardIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        RewardIntroduction()
            .preferredColorScheme(.dark)
    }
}
