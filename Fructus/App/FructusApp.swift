//
//  FructusApp.swift
//  Fructus
//
//  Created by 김동환 on 2021/06/15.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
