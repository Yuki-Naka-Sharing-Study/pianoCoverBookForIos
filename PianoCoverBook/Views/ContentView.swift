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
                    Label("記録確認", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            RecordView()
                .tabItem {
                    Label("記録する", systemImage: "pencil")
                }
                .tag(2)
            
            SettingView()
                .tabItem {
                    Label("設定", systemImage: "gearshape")
                }
                .tag(3)
        }
    }
}

#Preview {
    RecordView()
}
