//
//  RewardLocation.swift
//  DeathStrandingCookbook
//
//  Created by FanRende on 2021/11/5.
//

import SwiftUI

struct RewardLocation: Identifiable {
    let name: String
    let rewards: [Reward]

    let id = UUID()
}

extension RewardLocation {
    static let locations = [
        RewardLocation(name: "首結市", rewards: [
            Reward(name: "鴨舌帽", location: "首結市", claimLevel: 3, image: "hat"),
            Reward(name: "Test", location: "首結市", claimLevel: 3, image: "test"),
        ])
    ]
}

struct Reward: Identifiable {
    let name: String
    let location: String
    let claimLevel: Int
    let image: String

    let id = UUID()
}
