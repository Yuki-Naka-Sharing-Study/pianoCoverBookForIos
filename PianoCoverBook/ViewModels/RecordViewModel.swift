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
    
    // 以下、必要なコード
    var navigationTitle: String {
        return "空文字を判定"
    }
    
    // 以下、必要なコード
    var inputNameText: String {
        get { model.karaMojiNameText }
        set { model.karaMojiNameText = newValue }
    }
    
    // $musicName
    var musicName: String {
        get { model.musicNameText }
        set { model.musicNameText = newValue }
    }
    
    // $artistName
    var artistName: String {
        get { model.artistNameNameText }
        set { model.artistNameNameText = newValue }
    }
    
    // $memo
    var memo: String {
        get { model.memoText }
        set { model.memoText = newValue }
    }
    
    // 以下、必要なコード
    var isNameEmpty: Bool {
        inputNameText.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
