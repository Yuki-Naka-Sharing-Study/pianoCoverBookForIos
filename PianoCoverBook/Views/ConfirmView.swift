//
//  ConfirmView.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct ConfirmView: View {
    private let nameOfArtists = ["Bach", "Beethoven", "Chopin"]
    @State private var searchResults: [String] = []
    @State private var nameOfArtistsSearch = ""
    @State private var nameOfArtist = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                Text("まだ何も記録されていません。")
                Text(nameOfArtist)
                    .fontWeight(.bold)
            }
            .font(.title)
            .navigationTitle(Text("記録"))
            
            Grid(alignment: .leading) {
                GridRow {
                    Text("曲名")
                    Text("ラ・カンパネラ")
                }
                Divider()
                GridRow {
                    Text("アーティスト名")
                    Text("リスト")
                }
                Divider()
                GridRow {
                    Text("右手の習熟度")
                    Text("100%")
                }
                Divider()
                GridRow {
                    Text("左手の習熟度")
                    Text("100%")
                }
            }
            .padding()
            
            Grid(alignment: .leading) {
                GridRow {
                    Text("曲名")
                    Text("ノクターン")
                }
                Divider()
                GridRow {
                    Text("アーティスト名")
                    Text("ショパン")
                }
                Divider()
                GridRow {
                    Text("右手の習熟度")
                    Text("90%")
                }
                Divider()
                GridRow {
                    Text("左手の習熟度")
                    Text("90%")
                }
            }
            .padding()
            
            Grid(alignment: .leading) {
                GridRow {
                    Text("曲名")
                    Text("主よ人の望みの喜びよ")
                }
                Divider()
                GridRow {
                    Text("アーティスト名")
                    Text("バッハ")
                }
                Divider()
                GridRow {
                    Text("右手の習熟度")
                    Text("80%")
                }
                Divider()
                GridRow {
                    Text("左手の習熟度")
                    Text("80%")
                }
            }
            .padding()
            
            Spacer()
        }
        .searchable(
            text: $nameOfArtistsSearch,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: Text("アーティスト名・曲名で検索")
        ) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    nameOfArtist = name
                }
            }
        }
        .onChange(of: nameOfArtistsSearch) { _, nameOfArtist in
            searchResults = nameOfArtists.filter { name in
                name.hasPrefix(nameOfArtistsSearch)
            }
        }
    }
}

#Preview {
    ConfirmView()
}
