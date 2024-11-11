//
//  RecordViewModel.swift
//  PianoCoverBook
//
//  Created by 仲優樹 on 2024/11/11.
//

import SwiftUI
import RealmSwift

class RecordViewModel: ObservableObject {
    @Published private var model = RecordModel()
    
    var musicName: String {
        get { model.musicNameText }
        set { model.musicNameText = newValue }
    }
    
    var artistName: String {
        get { model.artistNameNameText }
        set { model.artistNameNameText = newValue }
    }
    
    var memo: String {
        get { model.memoText }
        set { model.memoText = newValue }
    }
    
    var isMusicNameEmpty: Bool {
        musicName.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    var isArtistNameEmpty: Bool {
        artistName.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    var isMemoEmpty: Bool {
        memo.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
