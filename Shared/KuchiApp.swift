//
//  KuchiApp.swift
//  Shared
//
//  Created by 하진호 on 2022/07/07.
//

import SwiftUI

@main
struct KuchiApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}

struct KuchiApp_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
