//
//  PeopleAppChallengeApp.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import SwiftUI

@main
struct PeopleAppChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            PeopleTabView()
                .environmentObject(DisplayModel())
        }
    }
}
