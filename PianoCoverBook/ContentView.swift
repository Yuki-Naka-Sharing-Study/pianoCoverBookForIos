//
//  ContentView.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection:$selection) {
            ConfirmView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(1)
            
            RecordView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(2)
            
            SettingView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .tag(3)
        }
    }
}

#Preview {
    RecordView()
}
