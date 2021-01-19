//
//  Fructus1App.swift
//  Fructus1
//
//  Created by admin on 13.01.2021.
//
import SwiftUI

@main
struct Fructus1App: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
            OnboardingView()
            } else {
                ContentView()
      }
    }
  }
}
