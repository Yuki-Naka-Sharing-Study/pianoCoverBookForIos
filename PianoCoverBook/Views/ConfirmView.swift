//
//  ConfirmView.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/10/17.
//

import SwiftUI

struct Music: Identifiable {
    var id = UUID()
    var nameOfMusic: String
    var nameOfArtist: String
    var memo: String
    var rightHand: Int
    var leftHand: Int
}

struct ConfirmView: View {
    private let nameOfArtists = ["Bach", "Beethoven", "Chopin"]
    @State private var searchResults: [String] = []
    @State private var nameOfArtistsSearch = ""
    @State private var nameOfArtist = ""
    @State private var items: [Music] = []
    
    var body: some View {
        if items.isEmpty {
            ContentUnavailableView(
                "記録無し",
                systemImage: "music.note",
                description: Text("まだ何も記録されていません。")
            )
        } else {
            NavigationStack {
                VStack(spacing: 20.0) {
                    Text(nameOfArtist)
                        .fontWeight(.bold)
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
            List(items) { item in
                Text(item.nameOfMusic)
            }
        }
    }
}

#Preview {
    ConfirmView()
}
