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
                Spacer()
            }
            .font(.title)
            .navigationTitle(Text("記録"))
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
